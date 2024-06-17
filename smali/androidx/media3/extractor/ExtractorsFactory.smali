.class public interface abstract Landroidx/media3/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createExtractors()[Landroidx/media3/extractor/Extractor;
.end method

.method public createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 0

    .line 1
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorsFactory;->createExtractors()[Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
