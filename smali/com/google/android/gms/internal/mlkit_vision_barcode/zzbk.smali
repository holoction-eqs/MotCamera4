.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;
.super Lcom/google/common/collect/CompactHashMap$Itr;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$Itr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbk;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;I)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzb:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p0, p0, p1

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzbt;->zzc:[Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object p0, p0, p1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
