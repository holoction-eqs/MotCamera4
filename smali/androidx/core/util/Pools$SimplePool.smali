.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mPool:[Ljava/lang/Object;

.field public mPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    iput p2, p0, Landroidx/core/util/Pools$SimplePool;->$r8$classId:I

    const/4 v0, 0x1

    const-string v1, "The max pool size must be > 0"

    if-eq p2, v0, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->$r8$classId:I

    iget-object v1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-object v3, v1, v0

    aput-object v2, v1, v0

    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    move-object v2, v3

    :cond_0
    return-object v2

    :goto_0
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    aget-object v3, v1, v0

    aput-object v2, v1, v0

    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    move-object v2, v3

    :cond_1
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 6

    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->$r8$classId:I

    iget-object v1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    move v0, v2

    :goto_0
    iget v4, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    if-ne v5, p1, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    array-length v0, v1

    if-ge v4, v0, :cond_2

    aput-object p1, v1, v4

    add-int/2addr v4, v3

    iput v4, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    move v2, v3

    :cond_2
    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already in the pool!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    iget v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    array-length v4, v1

    if-ge v0, v4, :cond_4

    aput-object p1, v1, v0

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    move v2, v3

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
