.class public interface abstract Landroidx/media3/extractor/ExtractorOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLACEHOLDER:Landroidx/work/InputMergerFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/InputMergerFactory$1;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/ExtractorOutput;->PLACEHOLDER:Landroidx/work/InputMergerFactory$1;

    return-void
.end method


# virtual methods
.method public abstract endTracks()V
.end method

.method public abstract seekMap(Landroidx/media3/extractor/SeekMap;)V
.end method

.method public abstract track(II)Landroidx/media3/extractor/TrackOutput;
.end method
