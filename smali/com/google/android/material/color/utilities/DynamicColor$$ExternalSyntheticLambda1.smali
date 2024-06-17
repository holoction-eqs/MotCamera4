.class public final synthetic Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/function/Function;

.field public final synthetic f$1:Ljava/util/function/Function;

.field public final synthetic f$2:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v5, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Function;

    iget-object v4, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Function;

    iget p0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance v2, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;

    const/4 p0, 0x1

    invoke-direct {v2, v0, p0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/color/utilities/SchemeContent;I)V

    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;

    invoke-direct {v3, v1, v0, v4}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;

    const/4 p0, 0x0

    invoke-direct {v7, p0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;->calculateDynamicTone(Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;Ljava/util/function/Function;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/color/utilities/SchemeContent;

    new-instance v2, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;

    const/4 p0, 0x2

    invoke-direct {v2, v0, p0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/color/utilities/SchemeContent;I)V

    new-instance v3, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda8;

    invoke-direct {v3, v4, v0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Function;Lcom/google/android/material/color/utilities/SchemeContent;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/material/color/utilities/DynamicColor;->calculateDynamicTone(Lcom/google/android/material/color/utilities/SchemeContent;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda2;Ljava/util/function/BiFunction;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;Ljava/util/function/Function;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
