.class public final synthetic Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    invoke-direct {v1, p0, v2}, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/SettingSoundPlayer$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->SHUTTER_TONE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-object v1, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
