.class public final Landroidx/media3/decoder/SimpleDecoder$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/decoder/SimpleDecoder$1;->this$0:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    const-string p1, "ExoPlayer:SimpleDecoder"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/decoder/SimpleDecoder$1;->this$0:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->decode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
