.class public final Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sPool:Landroidx/core/util/Pools$SimplePool;


# instance fields
.field public flags:I

.field public postInfo:Lcom/motorola/camera/utility/Error$ErrorBuilder;

.field public preInfo:Lcom/motorola/camera/utility/Error$ErrorBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/util/Pools$SimplePool;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    return-void
.end method

.method public static obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    .locals 1

    sget-object v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;-><init>()V

    :cond_0
    return-object v0
.end method
