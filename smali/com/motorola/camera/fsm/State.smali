.class public abstract Lcom/motorola/camera/fsm/State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mAutoTransitionState:Z

.field public final mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mHierarchy:[Lcom/motorola/camera/fsm/State;

.field public final mParent:Lcom/motorola/camera/fsm/State;

.field public final mQualifiedName:Ljava/lang/String;

.field public final mStateKey:Ljava/lang/Object;

.field public final mTransitions:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/StateKey;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/camera/CameraRunnable;Lcom/motorola/camera/fsm/State;Ljava/util/LinkedHashSet;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    iput-object p1, p0, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    iput-boolean p8, p0, Lcom/motorola/camera/fsm/State;->mAutoTransitionState:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/HashMap;

    invoke-interface {p7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    const/4 p8, 0x1

    if-eqz p7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/motorola/camera/fsm/camera/CameraTransition;

    iget-object v0, p7, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEvent:Ljava/lang/Object;

    iget-object v1, p0, Lcom/motorola/camera/fsm/State;->mTransitions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p7, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ljava/util/List;

    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p8, Ljava/util/List;

    invoke-interface {p8, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/motorola/camera/fsm/State;->mEntryCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p3, p0, Lcom/motorola/camera/fsm/State;->mExitCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p4, p0, Lcom/motorola/camera/fsm/State;->mExitAfterFireChange:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p5, p0, Lcom/motorola/camera/fsm/State;->mAlwaysRunCode:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object p6, p0, Lcom/motorola/camera/fsm/State;->mParent:Lcom/motorola/camera/fsm/State;

    const/4 p1, 0x0

    if-nez p6, :cond_2

    iget-object p2, p0, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/fsm/State;->mQualifiedName:Ljava/lang/String;

    new-array p2, p8, [Lcom/motorola/camera/fsm/State;

    aput-object p0, p2, p1

    iput-object p2, p0, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p6, Lcom/motorola/camera/fsm/State;->mQualifiedName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/motorola/camera/fsm/State;->mStateKey:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/motorola/camera/fsm/State;->mQualifiedName:Ljava/lang/String;

    iget-object p2, p6, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length p3, p2

    add-int/2addr p3, p8

    new-array p3, p3, [Lcom/motorola/camera/fsm/State;

    iput-object p3, p0, Lcom/motorola/camera/fsm/State;->mHierarchy:[Lcom/motorola/camera/fsm/State;

    array-length p4, p2

    invoke-static {p2, p1, p3, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    aput-object p0, p3, p1

    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "stateKey must not be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
