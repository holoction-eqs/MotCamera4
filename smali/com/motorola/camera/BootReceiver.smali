.class public Lcom/motorola/camera/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-class p2, Lcom/motorola/camera/CountryDetector;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    const-string v0, "com.motorola.camera_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.motorola.camera.country_iso"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    const/4 p2, 0x1

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/motorola/camera/SimStateReceiver;->enableReceiver(Landroid/content/Context;Z)V

    :cond_1
    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_DOCUMENT:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/motorola/camera/CameraScan;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    move v1, p2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-virtual {v2, v3, v1, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/motorola/camera/service/QrScannerTileService;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v3, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, p2

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v2, v1, v3, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CLI_MIRROR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/motorola/camera/MirrorCameraActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v4, p2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    const-string p2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/motorola/camera/mcf/McfAlgoAssets;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Z)V

    if-eqz p2, :cond_6

    new-instance p0, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;

    invoke-direct {p0, p1}, Lcom/motorola/camera/detector/SmartCamResultsDBHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    sget p0, Lcom/motorola/camera/utility/ClearCacheService;->$r8$clinit:I

    const-class p0, Lcom/motorola/camera/utility/ClearCacheService;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Landroidx/core/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object p0, Landroidx/core/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/JobIntentService$WorkEnqueuer;

    if-nez v2, :cond_5

    new-instance v2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    invoke-direct {v2, p1, v0}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroidx/core/app/JobIntentService$WorkEnqueuer;->ensureJobId()V

    check-cast v2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;

    new-instance p0, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, p2}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;)V

    iget-object p2, v2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    iget-object v0, v2, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    invoke-virtual {p2, v0, p0}, Landroid/app/job/JobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-class p0, Landroid/app/ActivityManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_7

    const-string p1, "com.google.android.apps.photos"

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_6
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->init(Landroid/content/Context;)V

    :cond_7
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2

    throw p0
.end method
