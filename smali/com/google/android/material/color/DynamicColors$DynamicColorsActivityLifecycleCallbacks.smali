.class public final Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    goto/16 :goto_e

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;->dynamicColorsOptions:Lcom/google/android/material/color/DynamicColorsOptions;

    iget-object v0, v4, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    if-nez v0, :cond_4

    iget v0, v4, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move v0, v5

    goto :goto_2

    :cond_4
    move v0, v3

    :cond_5
    :goto_2
    iget-object v5, v4, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:L_COROUTINE/ArtificialStackFrames;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    if-eqz v5, :cond_16

    new-instance v0, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct {v6, v5}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    const v5, 0x7f040271

    invoke-static {v1, v5, v2}, Lkotlin/UnsignedKt;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-direct {v0, v6, v5}, Lcom/google/android/material/color/utilities/SchemeContent;-><init>(Lcom/google/android/material/color/utilities/Hct;Z)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v6, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlw;->INSTANCE:Landroidx/work/InputMergerFactory$1;

    const/16 v7, 0x21

    const/4 v8, 0x0

    if-gt v5, v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastU()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move-object v6, v8

    :goto_3
    if-nez v6, :cond_8

    goto/16 :goto_e

    :cond_8
    sget-object v5, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->colorResourceIdToColorValue:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v6, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->colorResourceIdToColorValue:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object v10, v7, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/color/utilities/Hct;

    if-eqz v11, :cond_9

    goto :goto_5

    :cond_9
    iget-object v11, v7, Lcom/google/android/material/color/utilities/DynamicColor;->hue:Ljava/util/function/Function;

    invoke-interface {v11, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iget-object v11, v7, Lcom/google/android/material/color/utilities/DynamicColor;->chroma:Ljava/util/function/Function;

    invoke-interface {v11, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v7, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/SchemeContent;)D

    move-result-wide v16

    invoke-static/range {v12 .. v17}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v11

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_a

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    :cond_a
    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    iget v10, v11, Lcom/google/android/material/color/utilities/Hct;->argb:I

    iget-object v7, v7, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v7, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    const-wide v13, 0x406fe00000000000L    # 255.0

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v7, v11

    if-gez v7, :cond_c

    move v7, v3

    goto :goto_6

    :cond_c
    const/16 v11, 0xff

    if-le v7, v11, :cond_d

    move v7, v11

    :cond_d
    :goto_6
    const v11, 0xffffff

    and-int/2addr v10, v11

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v10, v7

    :goto_7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_e
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v5, "ColorResourcesLoaderCreator"

    const-string v6, "Table created, length: "

    :try_start_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlv;->create(Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_f

    goto :goto_b

    :cond_f
    :try_start_1
    const-string v6, "temp.arsc"

    invoke-static {v6, v3}, Landroid/system/Os;->memfd_create(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v6}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v0, Landroid/content/res/loader/ResourcesLoader;

    invoke-direct {v0}, Landroid/content/res/loader/ResourcesLoader;-><init>()V

    invoke-static {v9, v8}, Landroid/content/res/loader/ResourcesProvider;->loadFromTable(Landroid/os/ParcelFileDescriptor;Landroid/content/res/loader/AssetsProvider;)Landroid/content/res/loader/ResourcesProvider;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/res/loader/ResourcesLoader;->addProvider(Landroid/content/res/loader/ResourcesProvider;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_10

    :try_start_5
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_10
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_11

    :try_start_7
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_11
    move-object v8, v0

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v10, v0

    if-eqz v9, :cond_12

    :try_start_8
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_9
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_12
    :goto_8
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    move-object v9, v0

    :try_start_a
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v7, v0

    :try_start_b
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v6, v8

    :goto_a
    if-eqz v6, :cond_13

    :try_start_c
    invoke-static {v6}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    :cond_13
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    const-string v6, "Failed to create the ColorResourcesTableCreator."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    if-eqz v8, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v5, v2, [Landroid/content/res/loader/ResourcesLoader;

    aput-object v8, v5, v3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    move v0, v2

    goto :goto_c

    :cond_14
    move v0, v3

    :goto_c
    if-eqz v0, :cond_15

    const v0, 0x7f130353

    invoke-static {v1, v0}, Lkotlin/ResultKt;->applyThemeOverlay(Landroid/content/Context;I)V

    goto :goto_d

    :cond_15
    move v2, v3

    :goto_d
    if-nez v2, :cond_17

    goto :goto_e

    :cond_16
    invoke-static {v1, v0}, Lkotlin/ResultKt;->applyThemeOverlay(Landroid/content/Context;I)V

    :cond_17
    iget-object v0, v4, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lkotlin/UByte$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_e
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
