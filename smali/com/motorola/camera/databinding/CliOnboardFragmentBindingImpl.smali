.class public final Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;
.super Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;
.source "SourceFile"


# static fields
.field public static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public mDirtyFlags:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0a0489

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03f1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a03b3

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00a8

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v1, v0, v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    check-cast v2, Landroid/widget/ImageButton;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/motorola/camera/databinding/CliOnboardFragmentBinding;-><init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageButton;Lcom/motorola/camera/cli/onboard/CliOnboardViewPager;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0130

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    monitor-enter p0

    const-wide/16 v0, 0x1

    :try_start_0
    iput-wide v0, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final executeBindings()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/CliOnboardFragmentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onFieldChange(Ljava/lang/Object;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
