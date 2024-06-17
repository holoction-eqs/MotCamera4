.class public abstract Lby$d;
.super Lby;
.source "SourceFile"

# interfaces
.implements Ldj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lby;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field public d:Lbt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lby;-><init>()V

    sget-object v0, Lbt;->d:Lbt;

    iput-object v0, p0, Lby$d;->d:Lbt;

    return-void
.end method


# virtual methods
.method public final c()Lbt;
    .locals 2

    iget-object v0, p0, Lby$d;->d:Lbt;

    iget-boolean v1, v0, Lbt;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbt;

    iput-object v0, p0, Lby$d;->d:Lbt;

    :cond_0
    iget-object p0, p0, Lby$d;->d:Lbt;

    return-object p0
.end method
