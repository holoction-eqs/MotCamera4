.class public final Lcom/google/android/datatransport/cct/CctTransportBackend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v1, Lkotlin/UInt$Companion;->CONFIG:Lkotlin/UInt$Companion;

    invoke-virtual {v1, v0}, Lkotlin/UInt$Companion;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues:Z

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    sget-object p0, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid url: "

    invoke-static {v1, p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final decorate(Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;)Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
    .locals 5

    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/airbnb/lottie/manager/FontAssetManager;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;-><init>(I)V

    iget-object v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->tempPair:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    if-eqz v2, :cond_4

    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontFamilies:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->assetManager:Ljava/lang/Object;

    iget-wide v2, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->delegate:Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-direct {v2, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, v1, Lcom/airbnb/lottie/manager/FontAssetManager;->fontMap:Ljava/lang/Object;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getAutoMetadata()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "sdk-version"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hardware"

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os-uild"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getAutoMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tz-offset"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    if-nez v0, :cond_0

    sget-object v2, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->$VALUES:[Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    move v2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :goto_0
    invoke-virtual {v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "net-type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->valueMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    if-ne v0, p1, :cond_2

    sget-object v0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->valueMap:Landroid/util/SparseArray;

    const/16 v0, 0x64

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    :goto_2
    invoke-virtual {v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->getAutoMetadata()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mobile-subtype"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "country"

    invoke-virtual {v1, v3, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "locale"

    invoke-virtual {v1, v3, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mcc_mnc"

    invoke-virtual {v1, v3, v0}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p1, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "TransportRuntime."

    const-string v2, "CctTransportBackend"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to find version code for package"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "application_build"

    invoke-virtual {v1, p1, p0}, Lcom/airbnb/lottie/manager/FontAssetManager;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/airbnb/lottie/manager/FontAssetManager;->build()Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null encodedPayload"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null transportName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
