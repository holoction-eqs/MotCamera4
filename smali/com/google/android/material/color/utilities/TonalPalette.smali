.class public final Lcom/google/android/material/color/utilities/TonalPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final chroma:D

.field public final hue:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-wide p1, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    iput-wide p3, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    return-void
.end method
