.class public final Lcom/motorola/camera/shared/PackageUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sAppContext:Landroid/content/Context;

.field public static sInstance:Lcom/motorola/camera/shared/PackageUtility;


# instance fields
.field public mContentAIPackageName:Ljava/lang/String;

.field public mDeviceHasImagerTuning:Z

.field public mImagerTuningPackageName:Ljava/lang/String;

.field public final mPackagesVersionCodeMap:Ljava/util/HashMap;

.field public final mPackagesVersionMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mDeviceHasImagerTuning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/motorola/camera/shared/PackageUtility;
    .locals 3

    const-class v0, Lcom/motorola/camera/shared/PackageUtility;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sInstance:Lcom/motorola/camera/shared/PackageUtility;

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/motorola/camera/shared/PackageUtility;

    invoke-direct {v1}, Lcom/motorola/camera/shared/PackageUtility;-><init>()V

    sput-object v1, Lcom/motorola/camera/shared/PackageUtility;->sInstance:Lcom/motorola/camera/shared/PackageUtility;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Context is null. Have you called init?"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sInstance:Lcom/motorola/camera/shared/PackageUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final varargs cacheVersionForPackage([Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionMap:Ljava/util/HashMap;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getContentAiPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "com.motorola.camera3.content.ai"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.motorola.camera2.content.ai"

    :goto_0
    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/shared/PackageUtility;->mContentAIPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getImagerTuningName()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mDeviceHasImagerTuning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMPackageName(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v6, Lcom/motorola/camera/shared/PackageUtility;->sAppContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_0

    invoke-static {v4}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getMPackageName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/motorola/camera/shared/PackageUtility;->mDeviceHasImagerTuning:Z

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/shared/PackageUtility;->mImagerTuningPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLongVersionForPackage(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/shared/PackageUtility;->mPackagesVersionCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/shared/PackageUtility;->cacheVersionForPackage([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method
