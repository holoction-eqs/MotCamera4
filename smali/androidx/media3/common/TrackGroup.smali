.class public final Landroidx/media3/common/TrackGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_FORMATS:Ljava/lang/String;

.field public static final FIELD_ID:Ljava/lang/String;


# instance fields
.field public final formats:[Landroidx/media3/common/Format;

.field public hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/common/TrackGroup;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    array-length p1, p2

    iput p1, p0, Landroidx/media3/common/TrackGroup;->length:I

    aget-object p1, p2, v2

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    aget-object p1, p2, v2

    iget-object p1, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    :cond_1
    iput p1, p0, Landroidx/media3/common/TrackGroup;->type:I

    aget-object p0, p2, v2

    iget-object p0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const-string p1, "und"

    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object p0, v0

    :cond_3
    aget-object v3, p2, v2

    iget v3, v3, Landroidx/media3/common/Format;->roleFlags:I

    or-int/lit16 v3, v3, 0x4000

    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_8

    aget-object v4, p2, v1

    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v4, v0

    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    aget-object p0, p2, v2

    iget-object p0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    aget-object p1, p2, v1

    iget-object p1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const-string p2, "languages"

    goto :goto_2

    :cond_6
    aget-object v4, p2, v1

    iget v4, v4, Landroidx/media3/common/Format;->roleFlags:I

    or-int/lit16 v4, v4, 0x4000

    if-eq v3, v4, :cond_7

    aget-object p0, p2, v2

    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    aget-object p1, p2, v1

    iget p1, p1, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "role flags"

    :goto_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Different "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " combined in one TrackGroup: \'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track 0) and \'"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' (track "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    invoke-static {p0, v0, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Landroidx/media3/common/TrackGroup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/TrackGroup;

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    const/16 v1, 0x20f

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    return p0
.end method
