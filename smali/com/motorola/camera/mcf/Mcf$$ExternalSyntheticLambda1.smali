.class public final synthetic Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sTemporarySnapshots:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f030007

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    const v6, 0x7f030003

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    const v7, 0x7f030006

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    const v8, 0x7f030002

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030005

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030004

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    move v10, v3

    :goto_0
    array-length v11, v8

    if-ge v10, v11, :cond_7

    invoke-static {}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->values()[Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    move-result-object v11

    array-length v12, v11

    move v13, v3

    :goto_1
    sget-object v14, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Unknown:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    if-ge v13, v12, :cond_1

    aget-object v15, v11, v13

    iget v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    if-ne v2, v10, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    move-object v15, v14

    :goto_2
    if-ne v15, v14, :cond_2

    iget v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIndex:I

    if-eq v2, v10, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v5, v10, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mNameResId:I

    invoke-virtual {v6, v10, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mDescriptionResId:I

    invoke-virtual {v7, v10, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mIconResId:I

    const-string v2, "badge"

    aget-object v11, v8, v10

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v11, "edit"

    if-nez v2, :cond_3

    aget-object v2, v8, v10

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    or-int/2addr v2, v4

    iput v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    :cond_4
    aget-object v2, v9, v10

    aget-object v12, v1, v10

    aget-object v13, v8, v10

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v13, v2, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11, v13, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    move v11, v3

    :goto_3
    if-eqz v11, :cond_6

    iget v11, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    const/4 v13, 0x2

    or-int/2addr v11, v13

    iput v11, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    iget-object v11, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    invoke-virtual {v11, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v15, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v2, Lcom/motorola/camera/AppFeatures$Feature;->EDITOR_LAYER:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v2}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v2

    xor-int/2addr v2, v4

    sget-object v8, Lcom/motorola/camera/AppFeatures$Feature;->SCAN_EDITOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v1, v8}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v4

    sget-object v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Depth:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v8}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v8}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    :cond_8
    sget-object v9, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Layer:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v9}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v10

    if-eqz v10, :cond_b

    if-nez v2, :cond_a

    sget v2, Lcom/motorola/camera/provider/photos/LayerActivity;->$r8$clinit:I

    const-string v2, "com.motorola.photoeditor"

    const-string v10, "com.android.gallery3d.filtershow.FilterShowLayerActivity"

    sget-object v11, Lcom/motorola/camera/provider/photos/PhotosProviderUtils;->sPhotoShotPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v2, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    move v3, v4

    :cond_9
    if-nez v3, :cond_b

    :cond_a
    invoke-virtual {v9}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    :cond_b
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Doc:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->removeEditConfiguration()V

    :cond_c
    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->Portrait:Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;

    invoke-virtual {v0}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v8}, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->isEditAvailable()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mConfigurationInt:I

    iget-object v1, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    iget-object v3, v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityPackageArray:Landroid/util/SparseArray;

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    iget-object v1, v8, Lcom/motorola/camera/provider/photos/PhotosProvider$SpecialType;->mActivityClassArray:Landroid/util/SparseArray;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/camera/mcf/Mcf;->$r8$lambda$qQhI4y0I8UamGb0TpDgfWotTAXE(Landroid/content/Context;)V

    return-void

    :goto_5
    iget-object v0, v0, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    sget-object v1, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    monitor-enter v1

    :try_start_0
    iget v2, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    if-eq v2, v4, :cond_e

    goto/16 :goto_7

    :cond_e
    iget-object v2, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    new-instance v5, Landroid/media/SoundPool$Builder;

    invoke-direct {v5}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v2, v1, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    new-instance v5, Landroid/media/SoundPool$Builder;

    invoke-direct {v5}, Landroid/media/SoundPool$Builder;-><init>()V

    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {}, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->values()[Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;

    move-result-object v2

    array-length v5, v2

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_f

    aget-object v7, v2, v6

    sget-object v8, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    iget-object v9, v8, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundMap:Ljava/util/EnumMap;

    iget-object v8, v8, Lcom/motorola/camera/ui/SettingSoundPlayer;->mSoundPool:[Landroid/media/SoundPool;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, v8, v3

    iget v10, v7, Lcom/motorola/camera/ui/SettingSoundPlayer$Sound;->mRes:I

    invoke-virtual {v8, v0, v10, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/motorola/camera/ui/SettingSoundPlayer;

    const/4 v2, 0x2

    iput v2, v0, Lcom/motorola/camera/ui/SettingSoundPlayer;->mLoaded:I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_7
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
