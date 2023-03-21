.class public final synthetic Lcom/apk/ld;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ld;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/ld;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/ld;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/ld;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/apk/ld;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ld;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/ld;->for:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/ld;->new:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/apk/qd;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
