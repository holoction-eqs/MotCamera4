.class public final Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mKeys:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->mKeys:Ljava/util/List;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->mKeys:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->$r8$classId:I

    invoke-direct {p0, v0, p1}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;-><init>(ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->mKeys:Ljava/util/List;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1
    :pswitch_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Landroid/os/Bundle;

    if-eqz p2, :cond_1

    const-string p1, "SETTING"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->getKey(Ljava/lang/String;)Lcom/motorola/camera/settings/SettingsManager$Key;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    return v1

    .line 2
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    invoke-interface {v0, p1, p2}, Lcom/motorola/camera/fsm/GuardedTransitionRunnable;->canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v1, v2

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic canTransition(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 4
    :goto_0
    check-cast p1, Lcom/motorola/camera/fsm/camera/FsmContext;

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/fsm/camera/states/runnables/AnySettingChangedGuardRunnable;->canTransition(Lcom/motorola/camera/fsm/camera/FsmContext;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
