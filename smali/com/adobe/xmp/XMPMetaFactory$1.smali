.class public Lcom/adobe/xmp/XMPMetaFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;
.implements Landroidx/databinding/CreateWeakListener;
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
.implements Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
.implements Lcom/google/gson/internal/ObjectConstructor;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/adobe/xmp/XMPMetaFactory$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createCodec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    return-object p0
.end method

.method public static defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "current"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move v0, v2

    move v3, v0

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x28

    if-nez v4, :cond_3

    if-eq v5, v7, :cond_3

    goto :goto_3

    :cond_3
    if-ne v5, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/16 v7, 0x29

    if-ne v5, v7, :cond_5

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    move v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    return v2
.end method

.method public static distance([D[D)D
    .locals 7

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const/4 v0, 0x1

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    sub-double/2addr v3, v5

    const/4 v0, 0x2

    aget-wide v5, p0, v0

    aget-wide p0, p1, v0

    sub-double/2addr v5, p0

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v3, v1

    mul-double/2addr v5, v5

    add-double/2addr v5, v3

    return-wide v5
.end method

.method public static parse(Ljava/lang/String;)Landroidx/window/core/Version;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    new-instance v3, Landroidx/window/core/Version;

    const-string v4, "description"

    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v1, v2, p0, v0}, Landroidx/window/core/Version;-><init>(IILjava/lang/String;I)V

    return-object v3

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/XMPMetaFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-object p0

    :goto_0
    new-instance p0, Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public final create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;
    .locals 0

    new-instance p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding$LiveDataListener;-><init>(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)V

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding$LiveDataListener;->mListener:Landroidx/databinding/WeakListener;

    return-object p0
.end method

.method public final createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPMetaFactory$1;->createCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "configureCodec"

    invoke-static {v0}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    const-string p1, "startCodec"

    invoke-static {p1}, Landroidx/room/util/DBUtil;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Landroidx/room/util/DBUtil;->endSection()V

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, p0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    :cond_0
    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/adobe/xmp/XMPMetaFactory$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "com.google.android.datatransport.events"

    return-object p0

    :goto_0
    new-instance p0, Lcom/google/android/datatransport/runtime/time/UptimeClock;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/time/UptimeClock;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method

.method public getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    return-object p1
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public final onDiagnosticReceived()V
    .locals 0

    return-void
.end method

.method public final onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onResultReceived(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;
    .locals 4

    iget p0, p0, Lcom/adobe/xmp/XMPMetaFactory$1;->$r8$classId:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    invoke-direct {p0, v2}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(I)V

    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    if-eqz v2, :cond_0

    iput v1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    goto :goto_0

    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zza(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    if-eqz p1, :cond_1

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    :cond_1
    :goto_0
    return-object p0

    :goto_1
    new-instance p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;

    invoke-direct {p0, v2}, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(I)V

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zza(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;->zzb(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    :goto_2
    iput p1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iget p2, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    if-nez p2, :cond_3

    if-nez p1, :cond_4

    iput v3, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    goto :goto_3

    :cond_3
    move v3, p2

    :cond_4
    if-lt v3, p1, :cond_5

    iput v0, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    goto :goto_3

    :cond_5
    iput v1, p0, Landroidx/media3/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public setAllCaps(Z)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/adobe/xmp/XMPMetaFactory$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Adobe XMP Core 5.1.0-jc003"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    return-object p1
.end method
