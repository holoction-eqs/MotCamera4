.class public final Landroidx/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mTransition:Landroidx/transition/Transition;

.field public final mValues:Landroidx/transition/TransitionValues;

.field public final mView:Landroid/view/View;

.field public final mWindowId:Landroidx/transition/WindowIdImpl;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdApi18;Landroidx/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    iput-object p5, p0, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    iput-object p4, p0, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    iput-object p3, p0, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    return-void
.end method
