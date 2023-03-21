.class public final Lcom/apk/cf;
.super Ljava/lang/Object;
.source "CommonsUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Lcom/apk/ft;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/cf;->do:Landroid/content/Context;

    iput-object p2, p0, Lcom/apk/cf;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/cf;->for:Lcom/apk/ft;

    iput-boolean p4, p0, Lcom/apk/cf;->new:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/cf;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/apk/cf;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/cf;->for:Lcom/apk/ft;

    iget-boolean v3, p0, Lcom/apk/cf;->new:Z

    const/4 v4, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/eg;->j(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;ZZ)V

    return-void
.end method
