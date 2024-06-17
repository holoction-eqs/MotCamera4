.class public final enum Lcom/motorola/camera/background/common/ClientType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/background/common/ClientType;

.field public static final enum CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

.field public static final enum CLIENT_SINK:Lcom/motorola/camera/background/common/ClientType;

.field public static final enum CLIENT_SOURCE:Lcom/motorola/camera/background/common/ClientType;

.field public static final enum COPROC:Lcom/motorola/camera/background/common/ClientType;

.field public static final CREATOR:Lcom/motorola/camera/background/common/ClientType$CREATOR;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/background/common/ClientType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/background/common/ClientType;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/motorola/camera/background/common/ClientType;

    const-string v2, "CLIENT_SOURCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/background/common/ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SOURCE:Lcom/motorola/camera/background/common/ClientType;

    new-instance v2, Lcom/motorola/camera/background/common/ClientType;

    const-string v3, "CLIENT_SINK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/background/common/ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/background/common/ClientType;->CLIENT_SINK:Lcom/motorola/camera/background/common/ClientType;

    new-instance v3, Lcom/motorola/camera/background/common/ClientType;

    const-string v4, "CLIENT_BOTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/background/common/ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/background/common/ClientType;->CLIENT_BOTH:Lcom/motorola/camera/background/common/ClientType;

    new-instance v4, Lcom/motorola/camera/background/common/ClientType;

    const-string v5, "COPROC"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/background/common/ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/background/common/ClientType;->COPROC:Lcom/motorola/camera/background/common/ClientType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/background/common/ClientType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/common/ClientType;->$VALUES:[Lcom/motorola/camera/background/common/ClientType;

    new-instance v0, Lcom/motorola/camera/background/common/ClientType$CREATOR;

    invoke-direct {v0}, Lcom/motorola/camera/background/common/ClientType$CREATOR;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/common/ClientType;->CREATOR:Lcom/motorola/camera/background/common/ClientType$CREATOR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/background/common/ClientType;
    .locals 1

    const-class v0, Lcom/motorola/camera/background/common/ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/background/common/ClientType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/background/common/ClientType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/background/common/ClientType;->$VALUES:[Lcom/motorola/camera/background/common/ClientType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/background/common/ClientType;

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
