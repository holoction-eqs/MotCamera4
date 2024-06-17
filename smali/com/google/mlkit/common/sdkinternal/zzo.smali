.class public final synthetic Lcom/google/mlkit/common/sdkinternal/zzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/OptionalModuleApi;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:[Lcom/google/android/gms/common/Feature;


# direct methods
.method public synthetic constructor <init>([Lcom/google/android/gms/common/Feature;I)V
    .locals 0

    iput p2, p0, Lcom/google/mlkit/common/sdkinternal/zzo;->$r8$classId:I

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzo;->zza:[Lcom/google/android/gms/common/Feature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 1

    iget v0, p0, Lcom/google/mlkit/common/sdkinternal/zzo;->$r8$classId:I

    iget-object p0, p0, Lcom/google/mlkit/common/sdkinternal/zzo;->zza:[Lcom/google/android/gms/common/Feature;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    return-object p0

    :goto_0
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
