.class public final enum Lorg/tensorflow/lite/DataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lorg/tensorflow/lite/DataType;

.field public static final enum BOOL:Lorg/tensorflow/lite/DataType;

.field public static final enum FLOAT32:Lorg/tensorflow/lite/DataType;

.field public static final enum INT16:Lorg/tensorflow/lite/DataType;

.field public static final enum INT32:Lorg/tensorflow/lite/DataType;

.field public static final enum INT64:Lorg/tensorflow/lite/DataType;

.field public static final enum STRING:Lorg/tensorflow/lite/DataType;

.field public static final enum UINT8:Lorg/tensorflow/lite/DataType;

.field public static final values:[Lorg/tensorflow/lite/DataType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/tensorflow/lite/DataType;

    const-string v1, "FLOAT32"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    new-instance v1, Lorg/tensorflow/lite/DataType;

    const-string v2, "INT32"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    new-instance v2, Lorg/tensorflow/lite/DataType;

    const-string v3, "UINT8"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    new-instance v3, Lorg/tensorflow/lite/DataType;

    const-string v4, "INT64"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    new-instance v4, Lorg/tensorflow/lite/DataType;

    const-string v5, "STRING"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    new-instance v5, Lorg/tensorflow/lite/DataType;

    const-string v6, "BOOL"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/tensorflow/lite/DataType;->BOOL:Lorg/tensorflow/lite/DataType;

    new-instance v6, Lorg/tensorflow/lite/DataType;

    const-string v7, "INT16"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/tensorflow/lite/DataType;->INT16:Lorg/tensorflow/lite/DataType;

    new-instance v7, Lorg/tensorflow/lite/DataType;

    const-string v8, "INT8"

    const/16 v10, 0x9

    invoke-direct {v7, v8, v9, v10}, Lorg/tensorflow/lite/DataType;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v7}, [Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/DataType;->$VALUES:[Lorg/tensorflow/lite/DataType;

    invoke-static {}, Lorg/tensorflow/lite/DataType;->values()[Lorg/tensorflow/lite/DataType;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/DataType;->values:[Lorg/tensorflow/lite/DataType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/tensorflow/lite/DataType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/tensorflow/lite/DataType;
    .locals 1

    const-class v0, Lorg/tensorflow/lite/DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/tensorflow/lite/DataType;

    return-object p0
.end method

.method public static values()[Lorg/tensorflow/lite/DataType;
    .locals 1

    sget-object v0, Lorg/tensorflow/lite/DataType;->$VALUES:[Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, [Lorg/tensorflow/lite/DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/tensorflow/lite/DataType;

    return-object v0
.end method


# virtual methods
.method public final byteSize()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataType error: DataType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported yet"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, -0x1

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final toStringName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DataType error: DataType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported yet"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "short"

    return-object p0

    :pswitch_1
    const-string p0, "bool"

    return-object p0

    :pswitch_2
    const-string p0, "string"

    return-object p0

    :pswitch_3
    const-string p0, "long"

    return-object p0

    :pswitch_4
    const-string p0, "byte"

    return-object p0

    :pswitch_5
    const-string p0, "int"

    return-object p0

    :pswitch_6
    const-string p0, "float"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
