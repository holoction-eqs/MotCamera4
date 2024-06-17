.class public final Landroidx/media3/common/Metadata$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/common/Metadata$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 12

    iget p0, p0, Landroidx/media3/common/Metadata$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/ChapterFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/BinaryFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/media3/extractor/metadata/id3/ApicFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/ApicFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/icy/IcyInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/icy/IcyHeaders;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5
    new-instance p0, Landroidx/media3/extractor/metadata/flac/VorbisComment;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/flac/VorbisComment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_6
    new-instance p0, Landroidx/media3/extractor/metadata/flac/PictureFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/flac/PictureFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_7
    new-instance p0, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v0, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    invoke-direct {v0, p1, p0}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_9
    new-instance p0, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {p0, p1}, Landroidx/media3/container/Mp4LocationData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_a
    new-instance p0, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-direct {p0, p1}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_b
    new-instance p0, Landroidx/media3/container/CreationTime;

    invoke-direct {p0, p1}, Landroidx/media3/container/CreationTime;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_c
    new-instance p0, Landroidx/media3/common/StreamKey;

    invoke-direct {p0, p1}, Landroidx/media3/common/StreamKey;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_d
    new-instance p0, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p0, p1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_e
    new-instance p0, Landroidx/media3/common/DrmInitData;

    invoke-direct {p0, p1}, Landroidx/media3/common/DrmInitData;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_f
    new-instance p0, Landroidx/fragment/app/FragmentState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_10
    new-instance p0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_11
    new-instance p0, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_12
    new-instance p0, Landroidx/fragment/app/BackStackState;

    invoke-direct {p0, p1}, Landroidx/fragment/app/BackStackState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_13
    new-instance p0, Landroidx/core/widget/NestedScrollView$SavedState;

    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_14
    new-instance p0, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_15
    new-instance p0, Landroidx/activity/result/IntentSenderRequest;

    invoke-direct {p0, p1}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_16
    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_17
    new-instance p0, Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p1}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_18
    new-instance p0, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    return-object p0

    :pswitch_19
    new-instance p0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    check-cast p0, Landroid/media/MediaDescription;

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getMediaId(Landroid/media/MediaDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getTitle(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getSubtitle(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getDescription(Landroid/media/MediaDescription;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getIconBitmap(Landroid/media/MediaDescription;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getIconUri(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api21Impl;->getExtras(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/common/Format$1;->unparcelWithClassLoader(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_0
    const-string v7, "android.support.v4.media.description.MEDIA_URI"

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move-object v8, p1

    :goto_0
    if-eqz v8, :cond_3

    const-string v9, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    invoke-virtual {v0, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    move-object v7, p1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_3
    move-object v7, v0

    :goto_1
    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Landroid/support/v4/media/MediaDescriptionCompat$Api23Impl;->getMediaUri(Landroid/media/MediaDescription;)Landroid/net/Uri;

    move-result-object p1

    move-object v8, p1

    :goto_2
    new-instance p1, Landroid/support/v4/media/MediaDescriptionCompat;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    iput-object p0, p1, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionFwk:Landroid/media/MediaDescription;

    :cond_5
    return-object p1

    :pswitch_1b
    new-instance p0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Landroidx/media3/common/Metadata;

    invoke-direct {p0, p1}, Landroidx/media3/common/Metadata;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :goto_3
    new-instance p0, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/media3/common/Metadata$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/ChapterFrame;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/ApicFrame;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Landroidx/media3/extractor/metadata/icy/IcyInfo;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Landroidx/media3/extractor/metadata/flac/VorbisComment;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Landroidx/media3/extractor/metadata/flac/PictureFrame;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/media3/extractor/metadata/emsg/EventMessage;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Landroidx/media3/container/Mp4LocationData;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/media3/container/MdtaMetadataEntry;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/media3/container/CreationTime;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Landroidx/media3/common/StreamKey;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Landroidx/media3/common/DrmInitData$SchemeData;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Landroidx/media3/common/DrmInitData;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Landroidx/fragment/app/FragmentState;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/fragment/app/FragmentManagerState;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroidx/fragment/app/FragmentManager$LaunchedFragmentInfo;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/fragment/app/BackStackState;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/core/widget/NestedScrollView$SavedState;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/appcompat/widget/AppCompatSpinner$SavedState;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Landroidx/activity/result/IntentSenderRequest;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Landroidx/activity/result/ActivityResult;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Landroid/support/v4/os/ResultReceiver;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Landroid/support/v4/media/RatingCompat;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/media3/common/Metadata;

    return-object p0

    :goto_0
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/ChapterTocFrame;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
