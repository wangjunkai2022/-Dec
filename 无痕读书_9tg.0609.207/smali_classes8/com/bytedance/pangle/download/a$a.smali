.class public final enum Lcom/bytedance/pangle/download/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/pangle/download/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bytedance/pangle/download/a$a;

.field public static final enum b:Lcom/bytedance/pangle/download/a$a;

.field public static final enum c:Lcom/bytedance/pangle/download/a$a;

.field public static final enum d:Lcom/bytedance/pangle/download/a$a;

.field public static final enum e:Lcom/bytedance/pangle/download/a$a;

.field public static final enum f:Lcom/bytedance/pangle/download/a$a;

.field public static final enum g:Lcom/bytedance/pangle/download/a$a;

.field public static final synthetic i:[Lcom/bytedance/pangle/download/a$a;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->a:Lcom/bytedance/pangle/download/a$a;

    .line 2
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "NONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->b:Lcom/bytedance/pangle/download/a$a;

    .line 3
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "MOBILE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->c:Lcom/bytedance/pangle/download/a$a;

    .line 4
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "MOBILE_2G"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->d:Lcom/bytedance/pangle/download/a$a;

    .line 5
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "MOBILE_3G"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->e:Lcom/bytedance/pangle/download/a$a;

    .line 6
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "WIFI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->f:Lcom/bytedance/pangle/download/a$a;

    .line 7
    new-instance v0, Lcom/bytedance/pangle/download/a$a;

    const-string v1, "MOBILE_4G"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/bytedance/pangle/download/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/pangle/download/a$a;->g:Lcom/bytedance/pangle/download/a$a;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/bytedance/pangle/download/a$a;

    .line 8
    sget-object v9, Lcom/bytedance/pangle/download/a$a;->a:Lcom/bytedance/pangle/download/a$a;

    aput-object v9, v1, v2

    sget-object v2, Lcom/bytedance/pangle/download/a$a;->b:Lcom/bytedance/pangle/download/a$a;

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/pangle/download/a$a;->c:Lcom/bytedance/pangle/download/a$a;

    aput-object v2, v1, v4

    sget-object v2, Lcom/bytedance/pangle/download/a$a;->d:Lcom/bytedance/pangle/download/a$a;

    aput-object v2, v1, v5

    sget-object v2, Lcom/bytedance/pangle/download/a$a;->e:Lcom/bytedance/pangle/download/a$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/bytedance/pangle/download/a$a;->f:Lcom/bytedance/pangle/download/a$a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/bytedance/pangle/download/a$a;->i:[Lcom/bytedance/pangle/download/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/bytedance/pangle/download/a$a;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/pangle/download/a$a;
    .locals 1

    .line 1
    const-class v0, Lcom/bytedance/pangle/download/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/pangle/download/a$a;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/pangle/download/a$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/pangle/download/a$a;->i:[Lcom/bytedance/pangle/download/a$a;

    invoke-virtual {v0}, [Lcom/bytedance/pangle/download/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/pangle/download/a$a;

    return-object v0
.end method
