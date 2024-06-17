.class public final synthetic Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Lcom/google/android/material/color/utilities/SchemeContent;

.field public final synthetic f$2:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;->f$1:Lcom/google/android/material/color/utilities/SchemeContent;

    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;->f$2:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;->f$1:Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v0, v4, v6

    if-ltz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1, v6, v7}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v2

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;->f$2:Ljava/util/function/Function;

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    if-eqz v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/color/utilities/DynamicColor;

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    move-wide v8, p0

    move-wide p0, v0

    move-wide v0, v8

    :goto_1
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v2

    :cond_3
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
