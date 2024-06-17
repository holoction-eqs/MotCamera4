.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_10

    :pswitch_0
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/airbnb/lottie/LottieCompositionFactory;->taskCache:Ljava/util/HashMap;

    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    const-class v5, Lcom/airbnb/lottie/network/NetworkFetcher;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    if-nez v0, :cond_2

    new-instance v0, Lcom/airbnb/lottie/network/NetworkFetcher;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/airbnb/lottie/L;->networkCache:Lcom/google/gson/FieldAttributes;

    if-nez v7, :cond_1

    const-class v7, Lcom/google/gson/FieldAttributes;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v8, Lcom/airbnb/lottie/L;->networkCache:Lcom/google/gson/FieldAttributes;

    if-nez v8, :cond_0

    new-instance v8, Lcom/google/gson/FieldAttributes;

    new-instance v9, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;

    invoke-direct {v9, v6, v1}, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v8, v9, v4}, Lcom/google/gson/FieldAttributes;-><init>(Ljava/lang/Object;I)V

    sput-object v8, Lcom/airbnb/lottie/L;->networkCache:Lcom/google/gson/FieldAttributes;

    :cond_0
    monitor-exit v7

    move-object v7, v8

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    new-instance v6, Lkotlin/UByte$Companion;

    const/16 v8, 0x13

    invoke-direct {v6, v8}, Lkotlin/UByte$Companion;-><init>(I)V

    invoke-direct {v0, v7, v6}, Lcom/airbnb/lottie/network/NetworkFetcher;-><init>(Lcom/google/gson/FieldAttributes;Lkotlin/UByte$Companion;)V

    sput-object v0, Lcom/airbnb/lottie/L;->networkFetcher:Lcom/airbnb/lottie/network/NetworkFetcher;

    :cond_2
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_1
    sget-object v5, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v6, 0x0

    if-eqz p0, :cond_b

    iget-object v7, v0, Lcom/airbnb/lottie/network/NetworkFetcher;->networkCache:Lcom/google/gson/FieldAttributes;

    if-nez v7, :cond_4

    goto/16 :goto_6

    :cond_4
    :try_start_3
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lcom/google/gson/FieldAttributes;->parentDir()Ljava/io/File;

    move-result-object v9

    sget-object v10, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {v3, v10, v1}, Lcom/google/gson/FieldAttributes;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    new-instance v8, Ljava/io/File;

    invoke-virtual {v7}, Lcom/google/gson/FieldAttributes;->parentDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v3, v5, v1}, Lcom/google/gson/FieldAttributes;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move-object v8, v6

    :goto_2
    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const-string v11, ".zip"

    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v10, v5

    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    :goto_3
    move-object v8, v6

    :goto_4
    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    iget-object v7, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/airbnb/lottie/network/FileExtension;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/io/InputStream;

    if-ne v7, v5, :cond_a

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v8}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v5, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStreamSync(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    goto :goto_5

    :cond_a
    invoke-static {v8, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStreamSync(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v5

    :goto_5
    iget-object v5, v5, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    if-eqz v5, :cond_b

    check-cast v5, Lcom/airbnb/lottie/LottieComposition;

    goto :goto_7

    :cond_b
    :goto_6
    move-object v5, v6

    :goto_7
    if-eqz v5, :cond_c

    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v0, v5}, Lcom/airbnb/lottie/LottieResult;-><init>(Lcom/airbnb/lottie/LottieComposition;)V

    goto/16 :goto_c

    :cond_c
    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    const-string v7, "LottieFetchResult close failed "

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    :try_start_4
    iget-object v5, v0, Lcom/airbnb/lottie/network/NetworkFetcher;->fetcher:Lkotlin/UByte$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/UByte$Companion;->fetchSync(Ljava/lang/String;)Lcom/google/mlkit/common/sdkinternal/zzx;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v5, v8, Lcom/google/mlkit/common/sdkinternal/zzx;->zza:Ljava/lang/Object;

    :try_start_5
    move-object v6, v5

    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    div-int/lit8 v6, v6, 0x64
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_d

    move v1, v4

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_e

    :catch_1
    :cond_d
    :goto_8
    if-eqz v1, :cond_e

    :try_start_6
    move-object v1, v5

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    check-cast v5, Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/airbnb/lottie/network/NetworkFetcher;->fromInputStream(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    iget-object v1, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    invoke-static {}, Lcom/airbnb/lottie/utils/Logger;->debug()V

    goto :goto_9

    :cond_e
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Lcom/google/mlkit/common/sdkinternal/zzx;->error()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_9
    :try_start_7
    invoke-virtual {v8}, Lcom/google/mlkit/common/sdkinternal/zzx;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_c

    :catch_2
    move-exception v1

    invoke-static {v7, v1}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v6, v8

    goto :goto_a

    :catchall_3
    move-exception p0

    goto :goto_d

    :catch_4
    move-exception v0

    :goto_a
    :try_start_8
    new-instance v1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v6, :cond_f

    :try_start_9
    invoke-virtual {v6}, Lcom/google/mlkit/common/sdkinternal/zzx;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    invoke-static {v7, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_b
    move-object v0, v1

    :goto_c
    if-eqz p0, :cond_10

    iget-object v1, v0, Lcom/airbnb/lottie/LottieResult;->value:Ljava/lang/Object;

    if-eqz v1, :cond_10

    sget-object v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->INSTANCE:Lcom/airbnb/lottie/model/LottieCompositionCache;

    check-cast v1, Lcom/airbnb/lottie/LottieComposition;

    iget-object v2, v2, Lcom/airbnb/lottie/model/LottieCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {v2, p0, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0

    :goto_d
    move-object v8, v6

    :goto_e
    if-eqz v8, :cond_11

    :try_start_a
    invoke-virtual {v8}, Lcom/google/mlkit/common/sdkinternal/zzx;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    invoke-static {v7, v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_f
    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/work/impl/Processor;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workTagDao()Landroidx/core/view/MenuHostHelper;

    move-result-object v2

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroidx/core/view/MenuHostHelper;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object p0

    return-object p0

    :goto_10
    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$1:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
