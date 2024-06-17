.class public final Landroidx/appcompat/widget/TintInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mHasTintList:Z

.field public mHasTintMode:Z

.field public mTintList:Ljava/lang/Object;

.field public mTintMode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Landroidx/appcompat/widget/TintInfo;->$r8$classId:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iput-boolean p1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroidx/appcompat/widget/TintInfo;->$r8$classId:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCachedSpanGroupIndex(II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/TintInfo;->getSpanGroupIndex(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/TintInfo;->getSpanGroupIndex(II)I

    move-result p2

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p0, p2

    :goto_0
    return p0
.end method

.method public final getCachedSpanIndex(II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-nez v0, :cond_0

    rem-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    rem-int p2, p1, p2

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, p2

    :goto_0
    return p1
.end method

.method public final getSpanGroupIndex(II)I
    .locals 8

    iget-boolean v0, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    move v5, v2

    :goto_0
    if-gt v5, v3, :cond_1

    add-int v6, v5, v3

    ushr-int/2addr v6, v1

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-ge v7, p1, :cond_0

    add-int/lit8 v5, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v6, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v5, v4

    if-ltz v5, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eq v0, v4, :cond_3

    iget-object v3, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/widget/TintInfo;->getCachedSpanIndex(II)I

    move-result p0

    add-int/2addr p0, v1

    if-ne p0, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v2

    move v3, p0

    move v4, v3

    :cond_4
    :goto_2
    if-ge v4, p1, :cond_7

    add-int/lit8 p0, p0, 0x1

    if-ne p0, p2, :cond_5

    add-int/lit8 v3, v3, 0x1

    move p0, v2

    goto :goto_3

    :cond_5
    if-le p0, p2, :cond_6

    add-int/lit8 v3, v3, 0x1

    move p0, v1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr p0, v1

    if-le p0, p2, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    return v3
.end method

.method public final invalidateSpanIndexCache()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintList:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final setEnabled()V
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/TintInfo;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast p0, Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void

    :goto_1
    iput-boolean v1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iget-object p0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast p0, Landroid/net/wifi/WifiManager$WifiLock;

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setStayAwake(Z)V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/TintInfo;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void

    :goto_1
    iput-boolean p1, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iget-object v0, p0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean p0, p0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
