.class public final synthetic Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:D


# direct methods
.method public synthetic constructor <init>(ID)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-wide p2, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;->f$0:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;->$r8$classId:I

    iget-wide v1, p0, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda5;->f$0:D

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/Double;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Ljava/lang/Double;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
