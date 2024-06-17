.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public final synthetic $r8$classId:I

.field public zza:Z

.field public zzb:Z

.field public zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/encoders/ObjectEncoderContext;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb()V

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb()V

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zzc(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final add(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzd:Lcom/google/firebase/encoders/ObjectEncoderContext;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb()V

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->zzd$1(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-object p0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb()V

    check-cast v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zzb:Z

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdm;->zzd(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzb()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->$r8$classId:I

    const/4 v1, 0x1

    const-string v2, "Cannot encode a second value in the ValueEncoderContext"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    return-void

    :cond_0
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->zza:Z

    return-void

    :cond_1
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0, v2}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
