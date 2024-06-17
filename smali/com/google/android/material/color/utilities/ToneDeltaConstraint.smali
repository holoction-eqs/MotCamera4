.class public final Lcom/google/android/material/color/utilities/ToneDeltaConstraint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final keepAway:Lcom/google/android/material/color/utilities/DynamicColor;

.field public final keepAwayPolarity:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/DynamicColor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;->keepAway:Lcom/google/android/material/color/utilities/DynamicColor;

    iput p2, p0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;->keepAwayPolarity:I

    return-void
.end method
