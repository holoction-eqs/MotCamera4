.class public final Lcom/motorola/camera/PermissionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCATION_PERMISSIONS:[Ljava/lang/String;

.field public static final MEDIA_PERMISSIONS:Ljava/util/List;

.field public static final PERMISSIONS:Ljava/util/List;

.field public static mInstance:Lcom/motorola/camera/PermissionsManager;


# instance fields
.field public mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

.field public mCriticalPermissionsDenied:Z

.field public mLastAskShouldShowRationale:Z

.field public mLastRequestedPermission:I

.field public mMissingCriticalPermissions:Z

.field public mMissingOptionalPermissions:Z

.field public mOptionalPermissionsDenied:Z

.field public final mPermissionsMap:Ljava/util/HashMap;

.field public mRequestAlwaysOptionalPermissions:Z

.field public mWaitingUserAction:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    const/16 v2, 0x21

    invoke-static {v2}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    sput-object v3, Lcom/motorola/camera/PermissionsManager;->MEDIA_PERMISSIONS:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "android.permission.CAMERA"

    const-string v5, "android.permission.RECORD_AUDIO"

    filled-new-array {v4, v5, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/motorola/camera/Util;->isAtLeastBuildVersion(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Lcom/motorola/camera/PermissionsManager;->MEDIA_PERMISSIONS:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PermissionsManager;->PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/camera/PermissionsManager;->PERMISSIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mLastAskShouldShowRationale:Z

    iput v0, p0, Lcom/motorola/camera/PermissionsManager;->mLastRequestedPermission:I

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/motorola/camera/PermissionsManager;
    .locals 1

    sget-object v0, Lcom/motorola/camera/PermissionsManager;->mInstance:Lcom/motorola/camera/PermissionsManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/PermissionsManager;

    invoke-direct {v0}, Lcom/motorola/camera/PermissionsManager;-><init>()V

    sput-object v0, Lcom/motorola/camera/PermissionsManager;->mInstance:Lcom/motorola/camera/PermissionsManager;

    :cond_0
    sget-object v0, Lcom/motorola/camera/PermissionsManager;->mInstance:Lcom/motorola/camera/PermissionsManager;

    return-object v0
.end method

.method public static isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    if-nez v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static updateLocationPermission(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/LocationManager;->applyLocationPersistedValues()V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, v1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_2
    if-nez p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_ALLOW:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final isPermissionGranted(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final permissionRequestResult(Landroid/app/Activity;I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    iput p2, p0, Lcom/motorola/camera/PermissionsManager;->mLastRequestedPermission:I

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    sget-object v1, Lcom/motorola/camera/PermissionsManager;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    const/4 p1, 0x7

    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_0
    const-string p2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mLastAskShouldShowRationale:Z

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p1}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_EULA:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, p1}, Lcom/motorola/camera/PermissionsManager;->isAnyPermissionGranted([Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :cond_3
    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z

    goto :goto_0

    :cond_4
    iget-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    iput-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    iget-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    iput-boolean p1, p0, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/util/Map;->copyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;->onPermissionRequestResult(Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/PermissionsManager;->mCallback:Lcom/motorola/camera/PermissionsManager$PermissionResultCallback;

    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionsManager{mCriticalPermissionsDenied="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/motorola/camera/PermissionsManager;->mCriticalPermissionsDenied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPermissionsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMissingCriticalPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMissingOptionalPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOptionalPermissionsDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/PermissionsManager;->mOptionalPermissionsDenied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLastRequestedPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/PermissionsManager;->mLastRequestedPermission:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWaitingUserAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/PermissionsManager;->mWaitingUserAction:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized updatePermissions(Landroid/app/Activity;Z)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    iput-boolean v0, p0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z

    sget-object v1, Lcom/motorola/camera/PermissionsManager;->PERMISSIONS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-object v5, p0, Lcom/motorola/camera/PermissionsManager;->mPermissionsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_0

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/motorola/camera/PermissionsManager;->MEDIA_PERMISSIONS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v0

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/motorola/camera/PermissionsManager;->mMissingCriticalPermissions:Z

    goto :goto_0

    :cond_4
    if-nez p2, :cond_0

    iput-boolean v4, p0, Lcom/motorola/camera/PermissionsManager;->mMissingOptionalPermissions:Z

    invoke-virtual {p1, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/motorola/camera/PermissionsManager;->mRequestAlwaysOptionalPermissions:Z

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/motorola/camera/PermissionsManager;->updateLocationPermission(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
