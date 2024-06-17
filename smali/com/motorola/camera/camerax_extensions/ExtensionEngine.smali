.class public final Lcom/motorola/camera/camerax_extensions/ExtensionEngine;
.super Lcom/motorola/camera/camerax_extensions/IExtensionEngine$Stub;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/motorola/camera/camerax_extensions/ExtensionEngine;",
        "Lcom/motorola/camera/camerax_extensions/IExtensionEngine$Stub;",
        "com/google/android/gms/dynamite/zzo",
        "camerax_extensions_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/gms/dynamite/zzo;

.field public static final EXTENSION_MAP:Ljava/util/Map;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final clients:Landroid/util/SparseArray;

.field public final context:Landroid/content/Context;

.field public final jsonConfig:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/dynamite/zzo;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    const-class v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    const-string v2, "hdr"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    const-string v3, "supernight"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    const-string v4, "bokeh"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lkotlin/Pair;

    const-string v5, "beauty"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt___MapsJvmKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->EXTENSION_MAP:Ljava/util/Map;

    const-string v0, "camerax_extension_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/motorola/camera/camerax_extensions/IExtensionEngine$Stub;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->context:Landroid/content/Context;

    sget-object v0, Lcom/motorola/camera/camerax_extensions/JsonUtils;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getJson(Landroid/content/Context;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/motorola/camera/camerax_extensions/JsonUtils;->getJson(Landroid/content/Context;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/motorola/camera/shared/McfUtil;->consolidateJson(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->jsonConfig:Lorg/json/JSONObject;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-static {}, Lcom/motorola/camera/shared/Util;->getDevice()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/motorola/camera/shared/Util;->stripVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/motorola/camera/shared/IqUtil;->TAG:Ljava/lang/String;

    const-string v1, "iq_config_"

    const-string v3, "deviceName"

    invoke-static {p0, v3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Couldn\'t cast iq_config_ from String to JSONObject: "

    const-string v4, "Couldn\'t tokenize file iq_config_: "

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v5, v6}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {p1, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {p1, v2}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_a
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v3

    :try_start_c
    invoke-static {p1, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t read file iq_config_: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_1

    :try_start_d
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t find "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in iq_config_: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/settings/CacheBehavior;->createFromJson(Lorg/json/JSONObject;)Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/camerax_extensions/IqConfigManager;->iqTuningLuxStdStore:Lcom/motorola/camera/shared/tuning/IqTuningLuxStdStore;

    goto :goto_5

    :cond_2
    sget-object p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {p0}, Lcom/google/android/gms/dynamite/zzo;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to initialize json Iq config"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public static final native configureCaptureStreamNative(JLandroid/graphics/Point;ILandroid/view/Surface;IZIZ)Landroid/view/Surface;
.end method

.method public static final native deinitializeNative(J)Z
.end method

.method public static final native initializeNative(Ljava/lang/String;)J
.end method

.method public static final native processNative(JLjava/lang/String;ZI)Z
.end method


# virtual methods
.method public final getExtension(J)Lcom/motorola/camera/camerax_extensions/Extension;
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/util/LongSparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/camerax_extensions/Extension;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final removeApp(I)V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->clients:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "No client found, expecting client to exist "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/motorola/camera/camerax_extensions/ExtensionEngine;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/LongSparseArray;

    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/camerax_extensions/Extension;

    invoke-virtual {v0, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    sget-object v5, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-interface {v4, v2}, Lcom/motorola/camera/camerax_extensions/Extension;->deinitialize(I)V

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/motorola/camera/camerax_extensions/Extension;->deinitialize(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    return-void
.end method
