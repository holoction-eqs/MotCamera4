.class public final synthetic Landroidx/media3/common/Format$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable$Creator;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/google/common/base/Function;
.implements Lcom/motorola/camera/ui/widgets/AlertPopup$OnClickListener;
.implements Lcom/motorola/camera/utility/ImageReaderWrapper$OnImageAvailableListener;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget p0, p0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroidx/media3/extractor/mp4/Track;

    return-object p1

    :goto_0
    new-instance p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    check-cast p1, Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;-><init>(Landroidx/media3/common/util/Clock;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const-string v5, ""

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_28

    :pswitch_1
    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/media3/common/MediaItem;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    :goto_0
    move-object/from16 v16, v0

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/media3/common/MediaItem$LiveConfiguration;

    :cond_1
    move-object/from16 v26, v11

    sget-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v29

    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v2, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v31

    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v2, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    move-object v14, v1

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    sget-object v15, Landroidx/media3/common/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v34}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)V

    iput-boolean v0, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    return-object v1

    :pswitch_2
    sget-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_WINDOW_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    sget-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_DURATION_US:Ljava/lang/String;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    sget-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_POSITION_IN_WINDOW_US:Ljava/lang/String;

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    sget-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    sget-object v0, Landroidx/media3/common/Timeline$Period;->FIELD_AD_PLAYBACK_STATE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Landroidx/media3/common/AdPlaybackState;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    :goto_1
    move-object/from16 v22, v0

    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v14, v0

    invoke-virtual/range {v14 .. v23}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    return-object v0

    :pswitch_3
    sget-object v0, Landroidx/media3/common/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    sget-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v12, v13

    :goto_2
    invoke-static {v12}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    sget-object v0, Landroidx/media3/common/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/media3/common/ThumbRating;

    sget-object v2, Landroidx/media3/common/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    invoke-virtual {v1, v2, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/ThumbRating;-><init>(Z)V

    goto :goto_3

    :cond_4
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-direct {v0}, Landroidx/media3/common/ThumbRating;-><init>()V

    :goto_3
    return-object v0

    :pswitch_4
    sget-object v0, Landroidx/media3/common/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    sget-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    goto :goto_4

    :cond_5
    move v12, v13

    :goto_4
    invoke-static {v12}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    sget-object v0, Landroidx/media3/common/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroidx/media3/common/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    cmpl-float v2, v1, v4

    if-nez v2, :cond_6

    new-instance v1, Landroidx/media3/common/StarRating;

    invoke-direct {v1, v0}, Landroidx/media3/common/StarRating;-><init>(I)V

    goto :goto_5

    :cond_6
    new-instance v2, Landroidx/media3/common/StarRating;

    invoke-direct {v2, v1, v0}, Landroidx/media3/common/StarRating;-><init>(FI)V

    move-object v1, v2

    :goto_5
    return-object v1

    :pswitch_5
    sget-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v12, :cond_9

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    sget-object v0, Landroidx/media3/common/ThumbRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    goto :goto_6

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown RatingType: "

    invoke-static {v2, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    sget-object v0, Landroidx/media3/common/StarRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    goto :goto_6

    :cond_9
    sget-object v0, Landroidx/media3/common/PercentageRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    goto :goto_6

    :cond_a
    sget-object v0, Landroidx/media3/common/HeartRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Rating;

    return-object v0

    :pswitch_6
    sget-object v0, Landroidx/media3/common/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    sget-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_b

    goto :goto_7

    :cond_b
    move v12, v13

    :goto_7
    invoke-static {v12}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    sget-object v0, Landroidx/media3/common/PercentageRating;->FIELD_PERCENT:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v4

    if-nez v1, :cond_c

    new-instance v0, Landroidx/media3/common/PercentageRating;

    invoke-direct {v0}, Landroidx/media3/common/PercentageRating;-><init>()V

    goto :goto_8

    :cond_c
    new-instance v1, Landroidx/media3/common/PercentageRating;

    invoke-direct {v1, v0}, Landroidx/media3/common/PercentageRating;-><init>(F)V

    move-object v0, v1

    :goto_8
    return-object v0

    :pswitch_7
    new-instance v0, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->title:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->artist:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->albumTitle:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ALBUM_ARTIST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->albumArtist:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DISPLAY_TITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->displayTitle:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_SUBTITLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->subtitle:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->description:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_DATA_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_9

    :cond_d
    move-object v3, v11

    :goto_9
    if-nez v2, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [B

    :goto_a
    iput-object v11, v0, Landroidx/media3/common/MediaMetadata$Builder;->artworkData:[B

    iput-object v3, v0, Landroidx/media3/common/MediaMetadata$Builder;->artworkDataType:Ljava/lang/Integer;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_ARTWORK_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->artworkUri:Landroid/net/Uri;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_WRITER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->writer:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_COMPOSER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->composer:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_CONDUCTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->conductor:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_GENRE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->genre:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_COMPILATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->compilation:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_STATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->station:Ljava/lang/CharSequence;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->extras:Landroid/os/Bundle;

    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_USER_RATING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_f

    sget-object v3, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Rating;

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->userRating:Landroidx/media3/common/Rating;

    :cond_f
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_OVERALL_RATING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10

    sget-object v3, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Rating;

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->overallRating:Landroidx/media3/common/Rating;

    :cond_10
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TRACK_NUMBER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->trackNumber:Ljava/lang/Integer;

    :cond_11
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_TRACK_COUNT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->totalTrackCount:Ljava/lang/Integer;

    :cond_12
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_FOLDER_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->folderType:Ljava/lang/Integer;

    :cond_13
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_IS_BROWSABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->isBrowsable:Ljava/lang/Boolean;

    :cond_14
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_IS_PLAYABLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->isPlayable:Ljava/lang/Boolean;

    :cond_15
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_YEAR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->recordingYear:Ljava/lang/Integer;

    :cond_16
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_MONTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->recordingMonth:Ljava/lang/Integer;

    :cond_17
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RECORDING_DAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->recordingDay:Ljava/lang/Integer;

    :cond_18
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_YEAR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->releaseYear:Ljava/lang/Integer;

    :cond_19
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_MONTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->releaseMonth:Ljava/lang/Integer;

    :cond_1a
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_RELEASE_DAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->releaseDay:Ljava/lang/Integer;

    :cond_1b
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_DISC_NUMBER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->discNumber:Ljava/lang/Integer;

    :cond_1c
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_TOTAL_DISC_COUNT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/MediaMetadata$Builder;->totalDiscCount:Ljava/lang/Integer;

    :cond_1d
    sget-object v2, Landroidx/media3/common/MediaMetadata;->FIELD_MEDIA_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/MediaMetadata$Builder;->mediaType:Ljava/lang/Integer;

    :cond_1e
    new-instance v1, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    return-object v1

    :pswitch_8
    sget-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    invoke-virtual {v1, v4, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    invoke-virtual {v1, v5, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v7, v0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    iput-object v2, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    iput-object v3, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    iput v4, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    iput v5, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    iput-object v6, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    iput-object v1, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    invoke-direct {v0, v7}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    return-object v0

    :pswitch_9
    sget-object v0, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Landroidx/core/view/MenuHostHelper;-><init>(I)V

    sget-object v2, Landroidx/media3/common/MediaItem$RequestMetadata;->FIELD_MEDIA_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    sget-object v2, Landroidx/media3/common/MediaItem$RequestMetadata;->FIELD_SEARCH_QUERY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    sget-object v2, Landroidx/media3/common/MediaItem$RequestMetadata;->FIELD_EXTRAS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    new-instance v1, Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$RequestMetadata;-><init>(Landroidx/core/view/MenuHostHelper;)V

    return-object v1

    :pswitch_a
    new-instance v0, Landroidx/media3/common/StreamKey;

    sget-object v2, Landroidx/media3/common/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v2, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroidx/media3/common/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v3, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroidx/media3/common/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    invoke-virtual {v1, v4, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/common/StreamKey;-><init>(III)V

    return-object v0

    :pswitch_b
    sget-object v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_DRM_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1f

    move-object v4, v11

    goto :goto_b

    :cond_1f
    sget-object v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$DrmConfiguration;

    move-object v4, v0

    :goto_b
    sget-object v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_ADS_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_c

    :cond_20
    sget-object v2, Landroidx/media3/common/MediaItem$AdsConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/media3/common/MediaItem$AdsConfiguration;

    :goto_c
    move-object v5, v11

    sget-object v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_STREAM_KEYS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_d

    :cond_21
    new-instance v2, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v2, v0}, Landroidx/media3/common/Format$1;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/ArrayList;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    :goto_d
    move-object v6, v0

    sget-object v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_SUBTITLE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_e

    :cond_22
    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-static {v2, v0}, Landroidx/media3/common/Format$1;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/ArrayList;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    :goto_e
    move-object v8, v0

    new-instance v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    sget-object v2, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Landroidx/media3/common/MediaItem$LocalConfiguration;->FIELD_CUSTOM_CACHE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Landroidx/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    return-object v0

    :pswitch_c
    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration;

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_TARGET_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_OFFSET_MS:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MIN_PLAYBACK_SPEED:Ljava/lang/String;

    const v3, -0x800001

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v17

    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->FIELD_MAX_PLAYBACK_SPEED:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v18

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    return-object v0

    :pswitch_d
    sget-object v0, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_SCHEME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sget-object v2, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_LICENSE_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v4, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_LICENSE_REQUEST_HEADERS:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_23

    goto :goto_f

    :cond_23
    move-object v4, v3

    :goto_f
    if-ne v4, v3, :cond_24

    sget-object v3, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/RegularImmutableMap;

    goto :goto_12

    :cond_24
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-ne v4, v3, :cond_25

    goto :goto_11

    :cond_25
    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_26
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_26

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_27
    :goto_11
    invoke-static {v5}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    :goto_12
    sget-object v4, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_MULTI_SESSION:Ljava/lang/String;

    invoke-virtual {v1, v4, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sget-object v5, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v5, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sget-object v6, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_FORCE_DEFAULT_LICENSE_URI:Ljava/lang/String;

    invoke-virtual {v1, v6, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_FORCED_SESSION_TRACK_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_28

    move-object v7, v8

    :cond_28
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    sget-object v8, Landroidx/media3/common/MediaItem$DrmConfiguration;->FIELD_KEY_SET_ID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v8, v0}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    iput-object v2, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iput-boolean v4, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    iput-boolean v6, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    iput-boolean v5, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    if-eqz v1, :cond_29

    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v11

    :cond_29
    iput-object v11, v8, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-direct {v0, v8}, Landroidx/media3/common/MediaItem$DrmConfiguration;-><init>(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)V

    return-object v0

    :pswitch_e
    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;

    iget-wide v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v5, v3, v8

    if-ltz v5, :cond_2a

    move v5, v12

    goto :goto_13

    :cond_2a
    move v5, v13

    :goto_13
    invoke-static {v5}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    iget-wide v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    sget-object v5, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2c

    cmp-long v5, v3, v8

    if-ltz v5, :cond_2b

    goto :goto_14

    :cond_2b
    move v12, v13

    :cond_2c
    :goto_14
    invoke-static {v12}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-wide v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    sget-object v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    iget-boolean v3, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    sget-object v4, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    iget-boolean v2, v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    sget-object v3, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$ClippingProperties;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    return-object v1

    :pswitch_f
    sget-object v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    invoke-direct {v1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Landroid/net/Uri;)V

    new-instance v0, Landroidx/media3/common/MediaItem$AdsConfiguration;

    invoke-direct {v0, v1}, Landroidx/media3/common/MediaItem$AdsConfiguration;-><init>(Lcom/motorola/camera/CameraKpi;)V

    return-object v0

    :pswitch_10
    sget-object v0, Landroidx/media3/common/MediaItem;->FIELD_MEDIA_ID:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/MediaItem;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2d

    sget-object v0, Landroidx/media3/common/MediaItem$LiveConfiguration;->UNSET:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_15

    :cond_2d
    sget-object v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LiveConfiguration;

    :goto_15
    move-object/from16 v16, v0

    sget-object v0, Landroidx/media3/common/MediaItem;->FIELD_MEDIA_METADATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2e

    sget-object v0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_16

    :cond_2e
    sget-object v2, Landroidx/media3/common/MediaMetadata;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaMetadata;

    :goto_16
    move-object/from16 v17, v0

    sget-object v0, Landroidx/media3/common/MediaItem;->FIELD_CLIPPING_PROPERTIES:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2f

    sget-object v0, Landroidx/media3/common/MediaItem$ClippingProperties;->UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;

    goto :goto_17

    :cond_2f
    sget-object v2, Landroidx/media3/common/MediaItem$ClippingConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$ClippingProperties;

    :goto_17
    move-object v14, v0

    sget-object v0, Landroidx/media3/common/MediaItem;->FIELD_REQUEST_METADATA:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_30

    sget-object v0, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    goto :goto_18

    :cond_30
    sget-object v2, Landroidx/media3/common/MediaItem$RequestMetadata;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$RequestMetadata;

    :goto_18
    move-object/from16 v18, v0

    sget-object v0, Landroidx/media3/common/MediaItem;->FIELD_LOCAL_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_19

    :cond_31
    sget-object v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/media3/common/MediaItem$LocalConfiguration;

    :goto_19
    move-object v15, v11

    new-instance v0, Landroidx/media3/common/MediaItem;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    return-object v0

    :pswitch_11
    sget-object v0, Landroidx/media3/common/HeartRating;->FIELD_RATED:Ljava/lang/String;

    sget-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_32

    goto :goto_1a

    :cond_32
    move v12, v13

    :goto_1a
    invoke-static {v12}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    sget-object v0, Landroidx/media3/common/HeartRating;->FIELD_RATED:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Landroidx/media3/common/HeartRating;

    sget-object v2, Landroidx/media3/common/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    invoke-virtual {v1, v2, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Landroidx/media3/common/HeartRating;-><init>(Z)V

    goto :goto_1b

    :cond_33
    new-instance v0, Landroidx/media3/common/HeartRating;

    invoke-direct {v0}, Landroidx/media3/common/HeartRating;-><init>()V

    :goto_1b
    return-object v0

    :pswitch_12
    new-instance v0, Landroidx/media3/common/ColorInfo;

    sget-object v2, Landroidx/media3/common/ColorInfo;->FIELD_COLOR_SPACE:Ljava/lang/String;

    invoke-virtual {v1, v2, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroidx/media3/common/ColorInfo;->FIELD_COLOR_RANGE:Ljava/lang/String;

    invoke-virtual {v1, v3, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroidx/media3/common/ColorInfo;->FIELD_COLOR_TRANSFER:Ljava/lang/String;

    invoke-virtual {v1, v4, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroidx/media3/common/ColorInfo;->FIELD_HDR_STATIC_INFO:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1, v3, v4}, Landroidx/media3/common/ColorInfo;-><init>(I[BII)V

    return-object v0

    :pswitch_13
    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_TIME_US:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_COUNT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_ORIGINAL_COUNT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_URIS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_STATES:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    sget-object v7, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_DURATIONS_US:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_CONTENT_RESUME_OFFSET_US:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sget-object v8, Landroidx/media3/common/AdPlaybackState$AdGroup;->FIELD_IS_SERVER_SIDE_INSERTED:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    new-instance v12, Landroidx/media3/common/AdPlaybackState$AdGroup;

    if-nez v6, :cond_34

    new-array v1, v13, [I

    move-object v6, v1

    :cond_34
    if-nez v0, :cond_35

    new-array v0, v13, [Landroid/net/Uri;

    goto :goto_1c

    :cond_35
    new-array v1, v13, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    :goto_1c
    if-nez v7, :cond_36

    new-array v1, v13, [J

    move-object v8, v1

    goto :goto_1d

    :cond_36
    move-object v8, v7

    :goto_1d
    move-object v1, v12

    move-object v7, v0

    invoke-direct/range {v1 .. v11}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(JII[I[Landroid/net/Uri;[JJZ)V

    return-object v12

    :pswitch_14
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_GROUPS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_37

    new-array v0, v13, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-object/from16 v16, v0

    goto :goto_1f

    :cond_37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    move v3, v13

    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_38

    sget-object v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/AdPlaybackState$AdGroup;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_38
    move-object/from16 v16, v2

    :goto_1f
    sget-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_AD_RESUME_POSITION_US:Ljava/lang/String;

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    sget-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_CONTENT_DURATION_US:Ljava/lang/String;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    sget-object v0, Landroidx/media3/common/AdPlaybackState;->FIELD_REMOVED_AD_GROUP_COUNT:Ljava/lang/String;

    invoke-virtual {v1, v0, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    const/4 v15, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v21}, Landroidx/media3/common/AdPlaybackState;-><init>(Ljava/lang/Object;[Landroidx/media3/common/AdPlaybackState$AdGroup;JJI)V

    return-object v0

    :pswitch_15
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    if-eqz v1, :cond_39

    const-class v2, Landroidx/media3/common/Format$1;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_39
    sget-object v2, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v4, v3, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-eqz v2, :cond_3a

    goto :goto_20

    :cond_3a
    move-object v2, v4

    :goto_20
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    goto :goto_21

    :cond_3b
    iget-object v2, v3, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    :goto_21
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    goto :goto_22

    :cond_3c
    iget-object v2, v3, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    :goto_22
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->selectionFlags:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->roleFlags:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->averageBitrate:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->peakBitrate:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    goto :goto_23

    :cond_3d
    iget-object v2, v3, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    :goto_23
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Metadata;

    if-eqz v2, :cond_3e

    goto :goto_24

    :cond_3e
    iget-object v2, v3, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    :goto_24
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    goto :goto_25

    :cond_3f
    iget-object v2, v3, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    :goto_25
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    goto :goto_26

    :cond_40
    iget-object v2, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    :goto_26
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->maxInputSize:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_27
    invoke-static {v13}, Landroidx/media3/common/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_42

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/DrmInitData;

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    sget-object v2, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    iget-wide v4, v3, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    sget-object v2, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->width:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->height:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->frameRate:F

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    sget-object v2, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->stereoMode:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_41

    sget-object v4, Landroidx/media3/common/ColorInfo;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v2}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/ColorInfo;

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    :cond_41
    sget-object v2, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->encoderDelay:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->accessibilityChannel:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->tileCountHorizontal:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->tileCountVertical:I

    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    sget-object v2, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    iget v3, v3, Landroidx/media3/common/Format;->cryptoType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object v1

    :cond_42
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_27

    :goto_28
    sget-object v0, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_43

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    goto :goto_29

    :cond_43
    sget-object v2, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-static {v2, v0}, Landroidx/media3/common/Format$1;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/ArrayList;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    :goto_29
    sget-object v2, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/TrackGroup;

    new-array v3, v13, [Landroidx/media3/common/Format;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/Format;

    invoke-direct {v2, v1, v0}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget p0, p0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method public onClick(Lcom/motorola/camera/ui/widgets/AlertPopup;)V
    .locals 4

    iget p0, p0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;->$r8$classId:I

    const/high16 v0, 0x10000000

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper;->createGooglePlayStoreIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p1, p0}, Lcom/motorola/camera/CameraApp;->safeStartActivity(Landroid/content/Intent;)V

    :pswitch_2
    return-void

    :pswitch_3
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_SLIDE_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :pswitch_4
    return-void

    :pswitch_5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SCAN_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_6
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MOT_DOC_SHADOW_REMOVAL_CAPTURE_DIALOG:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :pswitch_7
    return-void

    :pswitch_8
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SDCARD_INSERTED:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/motorola/camera/ui/widgets/AlertPopup;->dismiss()V

    return-void

    :goto_0
    new-instance p0, Landroid/content/Intent;

    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.os.storage.extra.REQUESTED_BYTES"

    const-wide/32 v2, 0x9600000

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onImageAvailable(Lcom/motorola/camera/utility/ImageReaderWrapper;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/camera/utility/ImageReaderWrapper;->acquireLatestImage()Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isReprocessingAllowedByCurrentMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/motorola/camera/saving/ImageCaptureManager;->onZslImage(Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/utility/ImageReaderWrapper$ImageWrapper;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
