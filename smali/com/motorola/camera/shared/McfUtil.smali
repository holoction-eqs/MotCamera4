.class public abstract Lcom/motorola/camera/shared/McfUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static REGION:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/McfUtil;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/McfUtil;->TAG:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    return-void
.end method

.method public static consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/shared/McfUtil;->consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object p1

    :cond_5
    :goto_3
    return-object p0

    :cond_6
    :goto_4
    return-object p1
.end method

.method public static consolidateJsonForDevice(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "common-device"

    invoke-static {v3, v5}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/motorola/camera/shared/McfUtil;->consolidateJsonWithoutOverlay(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    :goto_2
    return-object p0

    :cond_5
    :goto_3
    return-object p1
.end method

.method public static consolidateJsonWithoutOverlay(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_3

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/motorola/camera/shared/McfUtil;->consolidateJsonWithoutOverlay(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public static decryptJSonConfig(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 6

    const-string v0, "Blowfish"

    :try_start_0
    const-string v1, "PUZg2GpA"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "MOT_DFT_"

    :cond_1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v5, "UTF_8"

    invoke-static {v4, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v0, p0}, Lkotlin/TuplesKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {p0, p1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {v0, p0}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    instance-of p1, p0, Ljava/io/IOException;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_1
    throw p0
.end method

.method public static getFeasibleDeviceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;->CARRIER_INFO:Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;

    invoke-static {v0}, Ljms/IJobMgrService$_Parcel;->getString(Lcom/motorola/camera/shared/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "_india"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    const-string v1, "mcf_config_"

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/Util;->hasAsset(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->getTotalRAMMiB(Landroid/content/Context;)I

    move-result v0

    add-int/lit16 v0, v0, 0x3ff

    div-int/lit16 v0, v0, 0x400

    invoke-static {v0, p1}, Lcom/motorola/camera/shared/Util;->getDeviceNameWithRAM(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/shared/Util;->hasAsset(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static final getRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 73

    const-string v0, "context"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v2, "ao"

    const-string v3, "bf"

    const-string v4, "bj"

    const-string v5, "bw"

    const-string v6, "bi"

    const-string v7, "cm"

    const-string v8, "cv"

    const-string v9, "cf"

    const-string v10, "cd"

    const-string v11, "cg"

    const-string v12, "ci"

    const-string v13, "dz"

    const-string v14, "dj"

    const-string v15, "eg"

    const-string v16, "eh"

    const-string v17, "er"

    const-string v18, "et"

    const-string v19, "ga"

    const-string v20, "gq"

    const-string v21, "gh"

    const-string v22, "gm"

    const-string v23, "gn"

    const-string v24, "gw"

    const-string v25, "km"

    const-string v26, "ls"

    const-string v27, "lr"

    const-string v28, "ly"

    const-string v29, "mg"

    const-string v30, "mw"

    const-string v31, "ml"

    const-string v32, "mr"

    const-string v33, "mu"

    const-string v34, "ma"

    const-string v35, "mz"

    const-string v36, "na"

    const-string v37, "ng"

    const-string v38, "ne"

    const-string v39, "re"

    const-string v40, "rw"

    const-string v41, "sh"

    const-string v42, "st"

    const-string v43, "sn"

    const-string v44, "sc"

    const-string v45, "sl"

    const-string v46, "so"

    const-string v47, "ss"

    const-string v48, "sd"

    const-string v49, "sz"

    const-string v50, "tz"

    const-string v51, "tg"

    const-string v52, "tn"

    const-string v53, "ug"

    const-string v54, "yt"

    const-string v55, "za"

    const-string v56, "zm"

    const-string v57, "zw"

    filled-new-array/range {v2 .. v57}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "ag"

    const-string v3, "ar"

    const-string v4, "bb"

    const-string v5, "bo"

    const-string v6, "br"

    const-string v7, "bs"

    const-string v8, "bz"

    const-string v9, "cl"

    const-string v10, "cu"

    const-string v11, "cr"

    const-string v12, "do"

    const-string v13, "gd"

    const-string v14, "gt"

    const-string v15, "gy"

    const-string v16, "hn"

    const-string v17, "ht"

    const-string v18, "jm"

    const-string v19, "kn"

    const-string v20, "lc"

    const-string v21, "mx"

    const-string v22, "ni"

    const-string v23, "pa"

    const-string v24, "pe"

    const-string v25, "py"

    const-string v26, "sr"

    const-string v27, "sv"

    const-string v28, "tt"

    const-string v29, "uy"

    const-string v30, "vc"

    const-string v31, "ve"

    filled-new-array/range {v2 .. v31}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ax"

    const-string v4, "al"

    const-string v5, "ae"

    const-string v6, "ad"

    const-string v7, "at"

    const-string v8, "by"

    const-string v9, "be"

    const-string v10, "ba"

    const-string v11, "bh"

    const-string v12, "bg"

    const-string v13, "ch"

    const-string v14, "co"

    const-string v15, "cy"

    const-string v16, "cz"

    const-string v17, "de"

    const-string v18, "dk"

    const-string v19, "ee"

    const-string v20, "es"

    const-string v21, "fo"

    const-string v22, "fi"

    const-string v23, "fr"

    const-string v24, "gb"

    const-string v25, "gi"

    const-string v26, "gr"

    const-string v27, "gg"

    const-string v28, "hr"

    const-string v29, "hu"

    const-string v30, "ie"

    const-string v31, "is"

    const-string v32, "im"

    const-string v33, "iq"

    const-string v34, "ir"

    const-string v35, "it"

    const-string v36, "il"

    const-string v37, "je"

    const-string v38, "jo"

    const-string v39, "kw"

    const-string v40, "lb"

    const-string v41, "li"

    const-string v42, "lt"

    const-string v43, "lv"

    const-string v44, "mk"

    const-string v45, "mt"

    const-string v46, "md"

    const-string v47, "mc"

    const-string v48, "me"

    const-string v49, "nl"

    const-string v50, "no"

    const-string v51, "nk"

    const-string v52, "om"

    const-string v53, "pl"

    const-string v54, "ps"

    const-string v55, "pt"

    const-string v56, "qa"

    const-string v57, "ro"

    const-string v58, "ru"

    const-string v59, "sa"

    const-string v60, "se"

    const-string v61, "sm"

    const-string v62, "sy"

    const-string v63, "rs"

    const-string v64, "sj"

    const-string v65, "se"

    const-string v66, "sk"

    const-string v67, "si"

    const-string v68, "tr"

    const-string v69, "ua"

    const-string v70, "uk"

    const-string v71, "va"

    const-string v72, "ye"

    filled-new-array/range {v3 .. v72}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ai"

    const-string v5, "ca"

    const-string v6, "us"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "nf"

    const-string v7, "um"

    const-string v8, "au"

    const-string v9, "nc"

    const-string v10, "nz"

    filled-new-array {v8, v9, v10, v5, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "cn"

    const-string v8, "hk"

    const-string v9, "in"

    const-string v10, "jp"

    const-string v11, "kp"

    const-string v12, "kr"

    const-string v13, "lk"

    const-string v14, "mn"

    const-string v15, "mo"

    const-string v16, "pf"

    const-string v17, "tw"

    const-string v18, "vn"

    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/motorola/camera/shared/Util;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "null"

    if-nez v1, :cond_2

    move-object v1, v8

    :cond_2
    invoke-static {v1, v8}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "latam"

    if-nez v8, :cond_7

    invoke-static {v1, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v1, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v1, v7}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v6, "asia"

    goto :goto_2

    :cond_5
    :goto_1
    move-object v6, v9

    :cond_6
    :goto_2
    move-object v9, v6

    :cond_7
    sput-object v9, Lcom/motorola/camera/shared/McfUtil;->REGION:Ljava/lang/String;

    return-object v9
.end method

.method public static minifyJson([B)Ljava/lang/String;
    .locals 2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/StringReader;

    invoke-direct {p0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p0}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/StringReader;)V

    invoke-static {v0}, Lkotlin/UnsignedKt;->parseReader(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p0, Lcom/google/gson/JsonNull;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonSyntaxException;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "element.toString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public static parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    const-string v0, "dir"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->closeSilently(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/motorola/camera/shared/Util;->closeSilently(Ljava/io/InputStream;)V

    return-object v3

    :cond_3
    :try_start_3
    invoke-static {v0}, Lcom/motorola/camera/shared/McfUtil;->minifyJson([B)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->closeSilently(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/motorola/camera/shared/Util;->closeSilently(Ljava/io/InputStream;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_2
    move-object v5, v3

    move-object v3, p0

    move-object p0, v5

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    move-object v5, v3

    move-object v3, p0

    move-object p0, v5

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    goto :goto_5

    :catch_2
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    :goto_4
    :try_start_4
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    :goto_5
    invoke-static {v3}, Lcom/motorola/camera/shared/Util;->closeSilently(Ljava/io/InputStream;)V

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->closeSilently(Ljava/io/InputStream;)V

    throw p1
.end method

.method public static final readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->getFeasibleDeviceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->readOverrideMcfConfig(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Lcom/motorola/camera/shared/McfUtil;->decryptJSonConfig(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    throw p0
.end method

.method public static final readMcfConfig(Lcom/motorola/camera/CameraApp;Ljava/lang/String;)[B
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/motorola/camera/shared/McfUtil;->readMcfConfig(Landroid/content/Context;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static readOverrideMcfConfig(Ljava/io/File;Ljava/lang/String;)[B
    .locals 9

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mcf_config_"

    invoke-static {v0, p1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/motorola/camera/shared/McfUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/motorola/camera/shared/McfUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_8

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/motorola/camera/shared/McfUtil;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_0

    array-length v2, v0

    if-ne v2, v4, :cond_7

    :cond_0
    array-length v2, v0

    const-string v5, "files[0].name"

    const-string v6, ""

    const/4 v7, 0x0

    if-ne v2, v3, :cond_1

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_0
    array-length v8, v0

    if-ne v8, v4, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v2, "files[1].name"

    invoke-static {v6, v2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    invoke-static {p0, v6}, Lcom/motorola/camera/shared/McfUtil;->parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v2}, Lcom/motorola/camera/shared/McfUtil;->parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/camera/shared/McfUtil;->consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_1
    if-ge v7, v3, :cond_5

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "imagers"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x3

    :cond_6
    :goto_2
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    const-string v2, "mcf_config_base_nine_sensor"

    goto :goto_4

    :pswitch_2
    const-string v2, "mcf_config_base_eight_sensor"

    goto :goto_4

    :pswitch_3
    const-string v2, "mcf_config_base_seven_sensor"

    goto :goto_4

    :pswitch_4
    const-string v2, "mcf_config_base_six_sensor"

    goto :goto_4

    :pswitch_5
    const-string v2, "mcf_config_base_five_sensor"

    goto :goto_4

    :pswitch_6
    const-string v2, "mcf_config_base_three_sensor"

    goto :goto_4

    :pswitch_7
    const-string v2, "mcf_config_base_two_sensor"

    goto :goto_4

    :goto_3
    const-string v2, "mcf_config_base_four_sensor"

    :goto_4
    :try_start_1
    invoke-static {p0, v2}, Lcom/motorola/camera/shared/McfUtil;->parseJsonFile(Ljava/io/File;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/motorola/camera/shared/McfUtil;->consolidateJsonForDevice(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "fail to consolidate and override MCF config"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_7
    const-string p0, "MCF config override file not found"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "dir is null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final readTuningMcfConfig(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/shared/McfUtil;->getFeasibleDeviceName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->WHITE_LIST:Lkotlin/collections/EmptySet;

    const-class v0, Lcom/motorola/camera/tuning/content/TuningProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "fileName"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "{}"

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->WHITE_LIST:Lkotlin/collections/EmptySet;

    invoke-virtual {v1, p1}, Lkotlin/collections/EmptySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
