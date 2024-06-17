.class public abstract Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static allModelsLoaded:Z

.field public static appContext:Landroid/content/Context;

.field public static final bgServiceModels:Ljava/util/ArrayList;

.field public static listener:Ljava/lang/ref/WeakReference;

.field public static final modelDataMap:Ljava/util/EnumMap;

.field public static shadowRemovalModelLoaded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->LOW_LIGHT_SELFIE_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$LOW_LIGHT_SELFIE_MODEL;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/McfMlModel;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->IMAGE_STABILIZATION_4PATCH_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$IMAGE_STABILIZATION_4PATCH_MODEL;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model$CUD;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/McfMlModel;->CUD:Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    return-void
.end method

.method public static final createGooglePlayStoreIntent()Landroid/content/Intent;
    .locals 3

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    const-string v1, "getInstance().contentAiPackageName"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "leapp://ptn/appinfo.do?packagename=%s&versioncode=-1"

    const-string v2, "com.lenovo.leos.appstore"

    invoke-static {v1, v2, v0}, Lcom/motorola/camera/shared/Util;->createStoreIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/PackageUtility;->getInstance()Lcom/motorola/camera/shared/PackageUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/shared/PackageUtility;->getContentAiPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/motorola/camera/shared/Util;->createGooglePlayStoreIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final declared-synchronized getBgServiceMlModels()Landroid/os/Bundle;
    .locals 8

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->bgServiceModels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    iget-object v5, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-static {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    :goto_1
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "fd"

    iget-object v7, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "hash"

    iget-object v4, v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/shared/ai/model/McfMlModel;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getModeFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 10

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;->DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    const-class v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v1

    :try_start_0
    const-string v2, "DOC_SHADOW_REMOVAL"

    sget-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->DOC_SHADOW_REMOVAL_MODEL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    iget-object v3, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->shadowRemovalModelLoaded:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_0
    sget-boolean v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :goto_0
    monitor-exit v1

    move v1, v4

    goto :goto_1

    :cond_1
    monitor-exit v1

    move v1, v3

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "ContentAiProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getModeFileDescriptor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Models still not loaded"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v1

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v1, v7

    iget-object v9, v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v9, v0, :cond_4

    sget-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v9, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v9, :cond_3

    iget-object v9, v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    goto :goto_3

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v4

    :goto_4
    if-eqz v9, :cond_5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    sget-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_7

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_6

    :cond_7
    move-object v3, v1

    move-object v1, v2

    :goto_6
    if-nez v1, :cond_8

    return-object v2

    :cond_8
    move-object v1, v3

    goto :goto_5

    :cond_9
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;
    .locals 11

    sget-object v0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->buildUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, v8

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "version"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :cond_1
    const-string v3, "hash"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    :try_start_2
    invoke-static {v2, v1}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v2, v3}, Lkotlin/UnsignedKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v5, v1

    :goto_2
    move v6, v10

    goto :goto_4

    :catch_0
    move-object v3, v1

    :catch_1
    sget-object v2, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :goto_3
    move-object v5, v3

    goto :goto_2

    :goto_4
    iget-object v2, p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->versioning:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-virtual {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelVersion()I

    move-result p0

    invoke-interface {v2, p0, v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$IVersioning;->checkState$enumunboxing$(II)I

    move-result v3

    invoke-static {v3}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getIsCompatible(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :try_start_5
    const-string p0, "r"

    invoke-virtual {v0, v8, p0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_5

    :catch_2
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_4
    :goto_5
    move-object v4, v1

    new-instance p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-object v2, p0

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;-><init>(ILandroid/content/res/AssetFileDescriptor;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Context is null. Have you called init?"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getModelResourceFiles(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)Ljava/util/Map;
    .locals 15

    const-string v0, "modelFeature"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getModelResourceFiles "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Models still not loaded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContentAiProviderHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    const/4 v7, 0x0

    if-ge v5, v3, :cond_4

    aget-object v8, v0, v5

    iget-object v9, v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v9, p0, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v6, :cond_1

    iget-object v7, v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    :cond_1
    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    if-eqz v6, :cond_3

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v6, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_6

    new-instance v5, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    long-to-int v11, v11

    iget v12, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->version:I

    iget-object v13, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->modelName:Ljava/lang/String;

    iget-object v14, v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->hash:Ljava/lang/String;

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/motorola/camera/shared/ai/model/McfMlModelResourceFile;-><init>(IIIILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_6
    move-object v2, v7

    :goto_2
    if-nez v2, :cond_5

    return-object v1

    :cond_7
    return-object p0
.end method

.method public static final getModelState(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;)I
    .locals 9

    sget-boolean v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getModelState "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Models still not loaded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContentAiProviderHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sget-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    if-ge v5, v3, :cond_4

    aget-object v7, v0, v5

    iget-object v8, v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->modelFeature:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Feature;

    if-ne v8, p0, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->fileDescriptor:Landroid/content/res/AssetFileDescriptor;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    const/4 p0, 0x5

    return p0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    invoke-virtual {v6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;->state:I

    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getIsCompatible(I)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return v0

    :cond_7
    invoke-static {v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->getIsUpdatable(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v1, v0

    goto :goto_3

    :cond_8
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    return v1
.end method

.method public static final declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->appContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized loadAllModels(Z)V
    .locals 9

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    sget-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {v7, v6}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->getModelData(Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Data;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    :cond_1
    if-eqz p0, :cond_2

    const-string p0, "ContentAiProviderHelper"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAllModels dur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->modelDataMap:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v1

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_3

    const-string v1, "ContentAiProviderHelper"

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v2

    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;->values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Model;

    move-result-object v3

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllModels: unload models, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", was expecting "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_3
    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->allModelsLoaded:Z

    sput-boolean p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->shadowRemovalModelLoaded:Z

    sget-object p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->listener:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$ContentAiProviderListener;->onAllModelsLoaded()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
