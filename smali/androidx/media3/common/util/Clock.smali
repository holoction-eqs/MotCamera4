.class public interface abstract Landroidx/media3/common/util/Clock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/common/util/SystemClock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/common/util/SystemClock;

    invoke-direct {v0}, Landroidx/media3/common/util/SystemClock;-><init>()V

    sput-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/SystemClock;

    return-void
.end method
