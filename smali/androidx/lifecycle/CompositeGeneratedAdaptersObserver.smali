.class public final Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "lifecycle-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public final generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;


# direct methods
.method public constructor <init>([Landroidx/lifecycle/GeneratedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->generatedAdapters:[Landroidx/lifecycle/GeneratedAdapter;

    array-length p1, p0

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-gtz p1, :cond_1

    array-length p1, p0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    aget-object p0, p0, v0

    throw p2

    :cond_1
    aget-object p0, p0, v0

    throw p2
.end method
