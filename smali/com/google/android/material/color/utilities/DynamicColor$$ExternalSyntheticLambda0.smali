.class public final synthetic Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Function;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/color/utilities/TonalPalette;

    iget-wide p0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->hue:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Lcom/google/android/material/color/utilities/SchemeContent;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/color/utilities/TonalPalette;

    iget-wide p0, p0, Lcom/google/android/material/color/utilities/TonalPalette;->chroma:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
