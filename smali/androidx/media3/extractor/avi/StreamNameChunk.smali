.class public final Landroidx/media3/extractor/avi/StreamNameChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 0

    const p0, 0x6e727473

    return p0
.end method
