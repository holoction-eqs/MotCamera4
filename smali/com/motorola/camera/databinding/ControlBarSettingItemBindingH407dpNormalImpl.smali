.class public final Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;
.super Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/generated/callback/OnClickListener$Listener;


# instance fields
.field public final mCallback4:Lcom/motorola/camera/generated/callback/OnClickListener;

.field public mDirtyFlags:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroid/view/View;ILandroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v3, v0, v2

    check-cast v3, Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v3}, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;-><init>(Landroid/view/View;Landroid/widget/ImageButton;)V

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    iget-object v3, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->controlBarItemBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0130

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p1, Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v2, v3}, Lcom/motorola/camera/generated/callback/OnClickListener;-><init>(Ljava/lang/Object;II)V

    iput-object p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mCallback4:Lcom/motorola/camera/generated/callback/OnClickListener;

    monitor-enter p0

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

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

    iget-object p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    iget-object p0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

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
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    iget v6, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->icon:I

    invoke-virtual {v4}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;->getAlpha()F

    move-result v7

    iget-object v4, v4, Lcom/motorola/camera/ui/controls_2020/controlbar/BaseControlBarItem;->description:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->controlBarItemBtn:Landroid/widget/ImageButton;

    const-string v8, "button"

    invoke-static {v5, v8}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v5, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    iget-object v6, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->controlBarItemBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v4, 0xb

    if-lt v5, v4, :cond_2

    iget-object v4, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->controlBarItemBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->controlBarItemBtn:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mCallback4:Lcom/motorola/camera/generated/callback/OnClickListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
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
    iget-wide v0, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

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
    check-cast p1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    if-nez p3, :cond_1

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final setVariable(ILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mClickListener:Lcom/motorola/camera/ui/controls_2020/DataBindingClickListener;

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

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

    check-cast p2, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    sget-object p1, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {p0, v0, p2, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    iput-object p2, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBinding;->mItem:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarSettingItem;

    monitor-enter p0

    :try_start_2
    iget-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr p1, v2

    iput-wide p1, p0, Lcom/motorola/camera/databinding/ControlBarSettingItemBindingH407dpNormalImpl;->mDirtyFlags:J

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
