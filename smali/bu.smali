.class final enum Lbu;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lbu;

.field public static final enum b:Lbu;

.field public static final enum c:Lbu;

.field public static final enum d:Lbu;

.field private static final synthetic f:[Lbu;


# instance fields
.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lbu;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lbu;->a:Lbu;

    new-instance v1, Lbu;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lbu;->b:Lbu;

    new-instance v3, Lbu;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lbu;->c:Lbu;

    new-instance v4, Lbu;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lbu;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lbu;->d:Lbu;

    filled-new-array {v0, v1, v3, v4}, [Lbu;

    move-result-object v0

    sput-object v0, Lbu;->f:[Lbu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lbu;->e:Z

    return-void
.end method

.method public static values()[Lbu;
    .locals 1

    sget-object v0, Lbu;->f:[Lbu;

    invoke-virtual {v0}, [Lbu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbu;

    return-object v0
.end method
