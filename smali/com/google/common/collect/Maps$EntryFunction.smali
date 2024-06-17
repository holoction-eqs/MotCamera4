.class public abstract enum Lcom/google/common/collect/Maps$EntryFunction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/common/collect/Maps$EntryFunction;

.field public static final enum VALUE:Lcom/google/common/collect/Maps$EntryFunction$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/Maps$EntryFunction$1;

    invoke-direct {v0}, Lcom/google/common/collect/Maps$EntryFunction$1;-><init>()V

    new-instance v1, Lcom/google/common/collect/Maps$EntryFunction$2;

    invoke-direct {v1}, Lcom/google/common/collect/Maps$EntryFunction$2;-><init>()V

    sput-object v1, Lcom/google/common/collect/Maps$EntryFunction;->VALUE:Lcom/google/common/collect/Maps$EntryFunction$2;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/collect/Maps$EntryFunction;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/google/common/collect/Maps$EntryFunction;->$VALUES:[Lcom/google/common/collect/Maps$EntryFunction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Maps$EntryFunction;
    .locals 1

    const-class v0, Lcom/google/common/collect/Maps$EntryFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Maps$EntryFunction;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/Maps$EntryFunction;
    .locals 1

    sget-object v0, Lcom/google/common/collect/Maps$EntryFunction;->$VALUES:[Lcom/google/common/collect/Maps$EntryFunction;

    invoke-virtual {v0}, [Lcom/google/common/collect/Maps$EntryFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Maps$EntryFunction;

    return-object v0
.end method
