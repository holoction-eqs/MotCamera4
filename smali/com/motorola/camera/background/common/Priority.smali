.class public final enum Lcom/motorola/camera/background/common/Priority;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/Priority;

.field public static final CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

.field public static final enum DEFAULT:Lcom/motorola/camera/background/common/Priority;

.field public static final enum NORMAL:Lcom/motorola/camera/background/common/Priority;

.field public static final map:Ljava/util/LinkedHashMap;


# instance fields
.field public final priority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/motorola/camera/background/common/Priority;

    const-string v1, "LOWEST"

    const/4 v13, 0x0

    const/16 v2, 0x13

    invoke-direct {v0, v1, v13, v2}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/motorola/camera/background/common/Priority;

    const-string v2, "BACKGROUND"

    const/4 v3, 0x1

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/background/common/Priority;

    const-string v5, "LESS_FAVORABLE"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/motorola/camera/background/common/Priority;

    const-string v5, "NORMAL"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v13}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/background/common/Priority;->NORMAL:Lcom/motorola/camera/background/common/Priority;

    new-instance v5, Lcom/motorola/camera/background/common/Priority;

    const/4 v6, -0x1

    const-string v7, "MORE_FAVORABLE"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8, v6}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/motorola/camera/background/common/Priority;

    const/4 v7, -0x2

    const-string v8, "FOREGROUND"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v7}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/motorola/camera/background/common/Priority;

    const/4 v8, -0x4

    const-string v9, "DISPLAY"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/motorola/camera/background/common/Priority;

    const/4 v9, -0x8

    const-string v10, "URGENT_DISPLAY"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/motorola/camera/background/common/Priority;

    const/16 v10, -0x10

    const-string v11, "AUDIO"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v10}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/motorola/camera/background/common/Priority;

    const/16 v11, -0x13

    const-string v12, "URGENT_AUDIO"

    const/16 v14, 0x9

    invoke-direct {v10, v12, v14, v11}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/motorola/camera/background/common/Priority;

    const-string v12, "HIGHEST"

    const/16 v14, -0x14

    invoke-direct {v11, v12, v4, v14}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/motorola/camera/background/common/Priority;

    const/16 v4, -0x15

    const-string v14, "REALTIME"

    const/16 v15, 0xb

    invoke-direct {v12, v14, v15, v4}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    new-instance v14, Lcom/motorola/camera/background/common/Priority;

    const-string v4, "DEFAULT"

    const/16 v15, 0xc

    invoke-direct {v14, v4, v15, v13}, Lcom/motorola/camera/background/common/Priority;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/motorola/camera/background/common/Priority;->DEFAULT:Lcom/motorola/camera/background/common/Priority;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    filled-new-array/range {v0 .. v12}, [Lcom/motorola/camera/background/common/Priority;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/Priority;->$VALUES:[Lcom/motorola/camera/background/common/Priority;

    new-instance v0, Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/Priority$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/Priority;->CREATOR:Lcom/motorola/camera/background/common/Priority$CREATOR;

    invoke-static {}, Lcom/motorola/camera/background/common/Priority;->values()[Lcom/motorola/camera/background/common/Priority;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length v1, v0

    :goto_0
    if-ge v13, v1, :cond_1

    aget-object v3, v0, v13

    iget v4, v3, Lcom/motorola/camera/background/common/Priority;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    sput-object v2, Lcom/motorola/camera/background/common/Priority;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/background/common/Priority;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/Priority;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/Priority;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/Priority;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/Priority;->$VALUES:[Lcom/motorola/camera/background/common/Priority;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/Priority;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
