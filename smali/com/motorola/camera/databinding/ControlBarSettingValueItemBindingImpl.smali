.class public final Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;
.super Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# instance fields
.field public final mCallback7:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public mDirtyFlags:J

.field public final mboundView1:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;-><init>(Landroid/view/View;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    const/4 v2, 0x0

    aget-object v3, v0, v2

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0130

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v3, v2}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Ljava/lang/Object;II)V

    iput-object p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mCallback7:Lcom/motorola/camera/generated/callback/OnClickListener;

    monitor-enter p0

    const-wide/16 v0, 0x8

    :try_start_0
    iput-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

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
.method public final _internalCallbackOnClick(I)V
    .locals 1

    iget-object p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;->mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    iget-object p0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;->onClick(Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;)V

    :cond_1
    return-void
.end method

.method public final executeBindings()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    const-wide/16 v5, 0xd

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const/4 v6, 0x0

    const-wide/16 v7, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v5, :cond_4

    and-long v11, v0, v7

    cmp-long v11, v11, v2

    if-eqz v11, :cond_0

    if-eqz v4, :cond_0

    iget v10, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    iget-object v11, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->description:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v11, v10

    move v10, v6

    :goto_0
    if-eqz v4, :cond_3

    iget-boolean v9, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isLocked:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->isPermanentLock:Z

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    :cond_1
    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v6, :cond_2

    const v6, 0x7f0700c7

    goto :goto_1

    :cond_2
    const v6, 0x7f0700c8

    :goto_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v9

    :cond_3
    move v6, v10

    move-object v10, v11

    :cond_4
    and-long/2addr v7, v0

    cmp-long v4, v7, v2

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    const-string v7, "button"

    invoke-static {v4, v7}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v4, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_5

    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {v4, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    const-wide/16 v6, 0x8

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mCallback7:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    if-eqz v5, :cond_7

    sget v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    iget-object p0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mboundView1:Landroid/widget/ImageButton;

    invoke-virtual {p0, v9}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

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
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    const/4 p1, 0x1

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    :goto_0
    move v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    if-ne p3, p1, :cond_2

    monitor-enter p0

    :try_start_1
    iget-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return v0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;->mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    sget-object p1, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {p0, v0, p2, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingValueItem;

    monitor-enter p0

    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingValueItemBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_1
    return v0
.end method
