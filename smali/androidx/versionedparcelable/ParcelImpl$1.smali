.class public final Landroidx/versionedparcelable/ParcelImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/versionedparcelable/ParcelImpl$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Landroidx/versionedparcelable/ParcelImpl$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_4
    new-instance p0, Landroidx/preference/TwoStatePreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5
    new-instance p0, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_6
    new-instance p0, Landroidx/preference/PreferenceGroup$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_7
    new-instance p0, Landroidx/preference/Preference$BaseSavedState;

    invoke-direct {p0, p1}, Landroidx/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_8
    new-instance p0, Landroidx/preference/MultiSelectListPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/MultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_9
    new-instance p0, Landroidx/preference/ListPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_a
    new-instance p0, Landroidx/preference/EditTextPreference$SavedState;

    invoke-direct {p0, p1}, Landroidx/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_b
    new-instance p0, Landroidx/media3/extractor/metadata/vorbis/VorbisComment;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/vorbis/VorbisComment;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_c
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object p0

    :pswitch_d
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_e
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    return-object p0

    :pswitch_f
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_10
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/scte35/PrivateCommand;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_11
    new-instance p0, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance p0, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    return-object p0

    :pswitch_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    new-instance p1, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    invoke-direct {p1, p0}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :pswitch_14
    new-instance p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_15
    new-instance p0, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_16
    new-instance p0, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/RegularImmutableList;)V

    return-object p0

    :pswitch_17
    new-instance p0, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/PrivFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_18
    new-instance p0, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/MlltFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_19
    new-instance p0, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Landroidx/media3/extractor/metadata/id3/GeobFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/GeobFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0, p1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :goto_0
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

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

    iget p0, p0, Landroidx/versionedparcelable/ParcelImpl$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Landroidx/preference/TwoStatePreference$SavedState;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Landroidx/preference/SeekBarPreference$SavedState;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Landroidx/preference/PreferenceGroup$SavedState;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Landroidx/preference/Preference$BaseSavedState;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Landroidx/preference/MultiSelectListPreference$SavedState;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Landroidx/preference/ListPreference$SavedState;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Landroidx/preference/EditTextPreference$SavedState;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Landroidx/media3/extractor/metadata/vorbis/VorbisComment;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/PrivateCommand;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/UrlLinkFrame;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/PrivFrame;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/MlltFrame;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/InternalFrame;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/GeobFrame;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/CommentFrame;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Landroidx/versionedparcelable/ParcelImpl;

    return-object p0

    :goto_0
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableData;

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
