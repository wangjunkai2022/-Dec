.class public final enum Lcom/apk/di$this$do;
.super Ljava/lang/Enum;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/di$this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/apk/di$this$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum break:Lcom/apk/di$this$do;

.field public static final enum case:Lcom/apk/di$this$do;

.field public static final enum catch:Lcom/apk/di$this$do;

.field public static final enum class:Lcom/apk/di$this$do;

.field public static final enum const:Lcom/apk/di$this$do;

.field public static final enum else:Lcom/apk/di$this$do;

.field public static final enum final:Lcom/apk/di$this$do;

.field public static final enum for:Lcom/apk/di$this$do;

.field public static final enum goto:Lcom/apk/di$this$do;

.field public static final enum new:Lcom/apk/di$this$do;

.field public static final synthetic super:[Lcom/apk/di$this$do;

.field public static final enum this:Lcom/apk/di$this$do;

.field public static final enum try:Lcom/apk/di$this$do;


# instance fields
.field public do:I

.field public if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "OK"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->for:Lcom/apk/di$this$do;

    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "CREATED"

    const/4 v3, 0x1

    const/16 v4, 0xc9

    const-string v5, "Created"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->new:Lcom/apk/di$this$do;

    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "NO_CONTENT"

    const/4 v4, 0x2

    const/16 v5, 0xcc

    const-string v6, "No Content"

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->try:Lcom/apk/di$this$do;

    .line 2
    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "PARTIAL_CONTENT"

    const/4 v5, 0x3

    const/16 v6, 0xce

    const-string v7, "Partial Content"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->case:Lcom/apk/di$this$do;

    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "REDIRECT"

    const/4 v6, 0x4

    const/16 v7, 0x12d

    const-string v8, "Moved Permanently"

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->else:Lcom/apk/di$this$do;

    .line 3
    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "NOT_MODIFIED"

    const/4 v7, 0x5

    const/16 v8, 0x130

    const-string v9, "Not Modified"

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->goto:Lcom/apk/di$this$do;

    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "BAD_REQUEST"

    const/4 v8, 0x6

    const/16 v9, 0x190

    const-string v10, "Bad Request"

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->this:Lcom/apk/di$this$do;

    .line 4
    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "UNAUTHORIZED"

    const/4 v9, 0x7

    const/16 v10, 0x191

    const-string v11, "Unauthorized"

    invoke-direct {v0, v1, v9, v10, v11}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->break:Lcom/apk/di$this$do;

    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "FORBIDDEN"

    const/16 v10, 0x8

    const/16 v11, 0x193

    const-string v12, "Forbidden"

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->catch:Lcom/apk/di$this$do;

    .line 5
    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "NOT_FOUND"

    const/16 v11, 0x9

    const/16 v12, 0x194

    const-string v13, "Not Found"

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->class:Lcom/apk/di$this$do;

    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "RANGE_NOT_SATISFIABLE"

    const/16 v12, 0xa

    const/16 v13, 0x1a0

    const-string v14, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v12, v13, v14}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->const:Lcom/apk/di$this$do;

    .line 6
    new-instance v0, Lcom/apk/di$this$do;

    const-string v1, "INTERNAL_ERROR"

    const/16 v13, 0xb

    const/16 v14, 0x1f4

    const-string v15, "Internal Server Error"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/apk/di$this$do;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/apk/di$this$do;->final:Lcom/apk/di$this$do;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/apk/di$this$do;

    .line 7
    sget-object v14, Lcom/apk/di$this$do;->for:Lcom/apk/di$this$do;

    aput-object v14, v1, v2

    sget-object v2, Lcom/apk/di$this$do;->new:Lcom/apk/di$this$do;

    aput-object v2, v1, v3

    sget-object v2, Lcom/apk/di$this$do;->try:Lcom/apk/di$this$do;

    aput-object v2, v1, v4

    sget-object v2, Lcom/apk/di$this$do;->case:Lcom/apk/di$this$do;

    aput-object v2, v1, v5

    sget-object v2, Lcom/apk/di$this$do;->else:Lcom/apk/di$this$do;

    aput-object v2, v1, v6

    sget-object v2, Lcom/apk/di$this$do;->goto:Lcom/apk/di$this$do;

    aput-object v2, v1, v7

    sget-object v2, Lcom/apk/di$this$do;->this:Lcom/apk/di$this$do;

    aput-object v2, v1, v8

    sget-object v2, Lcom/apk/di$this$do;->break:Lcom/apk/di$this$do;

    aput-object v2, v1, v9

    sget-object v2, Lcom/apk/di$this$do;->catch:Lcom/apk/di$this$do;

    aput-object v2, v1, v10

    sget-object v2, Lcom/apk/di$this$do;->class:Lcom/apk/di$this$do;

    aput-object v2, v1, v11

    sget-object v2, Lcom/apk/di$this$do;->const:Lcom/apk/di$this$do;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/apk/di$this$do;->super:[Lcom/apk/di$this$do;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/apk/di$this$do;->do:I

    .line 3
    iput-object p4, p0, Lcom/apk/di$this$do;->if:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apk/di$this$do;
    .locals 1

    .line 1
    const-class v0, Lcom/apk/di$this$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/apk/di$this$do;

    return-object p0
.end method

.method public static values()[Lcom/apk/di$this$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/di$this$do;->super:[Lcom/apk/di$this$do;

    invoke-virtual {v0}, [Lcom/apk/di$this$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apk/di$this$do;

    return-object v0
.end method
