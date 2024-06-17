.class public final Landroidx/media3/common/Player$Commands;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# instance fields
.field public final flags:Landroidx/media3/common/FlagSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/FlagSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroidx/media3/common/FlagSet$Builder;->build()Landroidx/media3/common/FlagSet;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/FlagSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media3/common/Player$Commands;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/media3/common/Player$Commands;

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    iget-object p1, p1, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->flags:Landroidx/media3/common/FlagSet;

    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->hashCode()I

    move-result p0

    return p0
.end method
