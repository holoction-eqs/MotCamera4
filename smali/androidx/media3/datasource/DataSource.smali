.class public interface abstract Landroidx/media3/datasource/DataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/DataReader;


# virtual methods
.method public abstract addTransferListener(Landroidx/media3/datasource/TransferListener;)V
.end method

.method public abstract close()V
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Landroidx/media3/datasource/DataSpec;)J
.end method
