.class public final Landroidx/media3/common/util/ListenerSet$ListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

.field public final listener:Ljava/lang/Object;

.field public needsIterationFinishedEvent:Z

.field public released:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    new-instance p1, Landroidx/media3/common/FlagSet$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/media3/common/FlagSet$Builder;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->flagsBuilder:Landroidx/media3/common/FlagSet$Builder;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;

    iget-object p1, p1, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
