.class public final synthetic Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable$Creator;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
.implements Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
.implements Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;
.implements Landroidx/arch/core/util/Function;
.implements Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    return-void

    :pswitch_1
    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    return-void

    :pswitch_2
    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    return-void

    :goto_0
    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p0, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/util/List;

    sget-object p0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/Data;

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    :goto_1
    move-object v7, v1

    new-instance v1, Landroidx/work/WorkInfo;

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    iget-object v5, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    iget-object v6, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iget v8, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iget v9, v0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroidx/work/WorkInfo;-><init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Landroidx/work/Data;Ljava/util/List;Landroidx/work/Data;II)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method public final fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_12

    :sswitch_0
    sget-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->FIELD_TRACK_GROUPS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-array v1, v3, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    sget-object v2, Landroidx/media3/common/TrackGroup;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-static {v2, v0}, Landroidx/media3/common/Format$1;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/ArrayList;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    new-array v2, v3, [Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v4

    :goto_1
    sget-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_2

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, v4

    :goto_2
    sget-object v0, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_3

    move-object v8, v0

    goto :goto_3

    :cond_3
    move-object v8, v4

    :goto_3
    sget-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    move-object v9, v0

    goto :goto_4

    :cond_4
    move-object v9, v4

    :goto_4
    sget-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/high16 v5, -0x80000000

    const v10, -0x800001

    if-eqz v4, :cond_5

    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v11, v4

    goto :goto_5

    :cond_5
    move v11, v5

    move v0, v10

    :goto_5
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v12, v4

    goto :goto_6

    :cond_6
    move v12, v5

    :goto_6
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move v13, v4

    goto :goto_7

    :cond_7
    move v13, v10

    :goto_7
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v14, v4

    goto :goto_8

    :cond_8
    move v14, v5

    :goto_8
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget-object v15, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v15}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v4

    goto :goto_9

    :cond_9
    move v15, v5

    move/from16 v16, v10

    :goto_9
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move/from16 v17, v4

    goto :goto_a

    :cond_a
    move/from16 v17, v10

    :goto_a
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    move/from16 v18, v4

    goto :goto_b

    :cond_b
    move/from16 v18, v10

    :goto_b
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v20, v4

    goto :goto_c

    :cond_c
    const/high16 v2, -0x1000000

    move/from16 v20, v2

    move v2, v3

    :goto_c
    sget-object v4, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_d

    move/from16 v19, v3

    goto :goto_d

    :cond_d
    move/from16 v19, v2

    :goto_d
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    goto :goto_e

    :cond_e
    move/from16 v21, v5

    :goto_e
    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    move/from16 v22, v1

    new-instance v1, Landroidx/media3/common/text/Cue;

    move-object v5, v1

    move v10, v0

    invoke-direct/range {v5 .. v22}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v1

    :sswitch_2
    sget-object v0, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    sget-object v0, Landroidx/media3/common/TrackGroup;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    sget-object v2, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/TrackGroup;

    sget-object v2, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iget v4, v0, Landroidx/media3/common/TrackGroup;->length:I

    new-array v4, v4, [I

    if-eqz v2, :cond_10

    goto :goto_10

    :cond_10
    move-object v2, v4

    :goto_10
    sget-object v4, Landroidx/media3/common/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v4

    iget v5, v0, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v5, [Z

    if-eqz v4, :cond_11

    goto :goto_11

    :cond_11
    move-object v4, v5

    :goto_11
    sget-object v5, Landroidx/media3/common/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v3, v0, v1, v2, v4}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    return-object v3

    :sswitch_3
    sget-object v0, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACK_GROUP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/TrackGroup;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/TrackGroup;

    sget-object v2, Landroidx/media3/common/TrackSelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/common/TrackSelectionOverride;

    invoke-static {v1}, Lkotlin/ResultKt;->asList([I)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    return-object v2

    :goto_12
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v5, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    sget-object v6, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_12

    if-ltz v1, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v2, v0, v1, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(II[I)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getConstructor()Ljava/lang/reflect/Constructor;
    .locals 5

    iget p0, p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    const-class v0, Landroidx/media3/extractor/Extractor;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    const-string v4, "isAvailable"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :cond_0
    return-object v4

    :goto_0
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    const-string p0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public final getScore(Ljava/lang/Object;)I
    .locals 1

    iget p0, p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v0, "OMX.google"

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    sget-object p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "c2.android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    const-string p1, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :goto_2
    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    sget-object p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    iget-object p0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget p0, p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->$r8$clinit:I

    .line 1
    new-instance p0, Lkotlin/UninitializedPropertyAccessException;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/UninitializedPropertyAccessException;-><init>(I)V

    .line 2
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    .line 3
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void

    .line 4
    :goto_0
    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 5
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    return-void
.end method

.method public final onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 0

    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean p0, Lcom/motorola/camera/detector/MLKitBarcodeDetector;->sInitialized:Z

    const-string p0, "MLKitBarcodeDetector"

    const-string v0, "Failed to detect barcode: "

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
