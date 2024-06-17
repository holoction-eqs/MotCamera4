.class public final Lcom/google/android/material/datepicker/CalendarStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;


# instance fields
.field public day:Ljava/lang/Object;

.field public invalidDay:Ljava/lang/Object;

.field public rangeFill:Ljava/lang/Object;

.field public selectedDay:Ljava/lang/Object;

.field public selectedYear:Ljava/lang/Object;

.field public todayDay:Ljava/lang/Object;

.field public todayYear:Ljava/lang/Object;

.field public year:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f04033b

    .line 1
    invoke-static {p1, v0, v1}, Lkotlin/UnsignedKt;->resolveTypedValueOrThrow(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 2
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendar:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lkotlin/io/ExceptionsKt;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/core/provider/FontRequest;->create(Landroid/content/Context;I)Landroidx/core/provider/FontRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/DefaultExtractorsFactory;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl$1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkTagDao_Impl$1;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Ljava/lang/Object;

    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl$2;

    const/4 v2, 0x2

    invoke-direct {v0, p0, p1, v2}, Landroidx/work/impl/model/WorkSpecDao_Impl$2;-><init>(Ljava/lang/Object;Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;

    invoke-direct {v0, p1, v2}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Ljava/lang/Object;

    new-instance v0, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/motorola/camera/background/provider/BgCaptureRecordDao_Impl$4;-><init>(Landroidx/room/RoomDatabase;I)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Ljava/lang/Object;

    :goto_0
    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v2, v3, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    .line 7
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 8
    iput-object v2, p0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isLogicalCamera(Ljava/lang/String;)Z

    move-result p1

    const-string v2, ""

    if-eqz p1, :cond_6

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    move-object v2, p1

    goto :goto_4

    :cond_5
    move-object v1, v2

    goto :goto_4

    :cond_6
    move-object v0, v2

    move-object v1, v0

    :goto_4
    new-instance p1, Lcom/motorola/camera/fsm/ChangeEvent;

    const/16 v3, 0x8

    invoke-direct {p1, v3, v0, v2, v1}, Lcom/motorola/camera/fsm/ChangeEvent;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraIds()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCameraIds()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v0, p1, [Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_7

    iget-object v1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Ljava/lang/Object;

    check-cast v1, [Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayYear:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 9
    :cond_7
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualCalibrationDataVendor:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Supplier;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedYear:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/datasource/DataSource$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v1, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/media3/datasource/DataSource$Factory;I)V

    :goto_0
    move-object v2, v1

    goto :goto_2

    :cond_2
    const-string v0, "androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, v3}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    const-string v4, "androidx.media3.exoplayer.hls.HlsMediaSource$Factory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/media3/datasource/DataSource$Factory;I)V

    goto :goto_1

    :cond_4
    const-string v4, "androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v0, v3}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/media3/datasource/DataSource$Factory;I)V

    :goto_1
    move-object v2, v4

    goto :goto_2

    :cond_5
    const-string v3, "androidx.media3.exoplayer.dash.DashMediaSource$Factory"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroidx/media3/datasource/DataSource$Factory;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :catch_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method
