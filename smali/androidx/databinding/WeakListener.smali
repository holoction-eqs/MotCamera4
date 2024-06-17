.class public final Landroidx/databinding/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final mLocalFieldId:I

.field public final mObservable:Landroidx/databinding/ObservableReference;

.field public mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    iput-object p3, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    return-void
.end method


# virtual methods
.method public final unregister()Z
    .locals 2

    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    invoke-interface {v1, v0}, Landroidx/databinding/ObservableReference;->removeListener(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    return v0
.end method
