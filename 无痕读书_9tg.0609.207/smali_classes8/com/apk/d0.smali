.class public Lcom/apk/d0;
.super Ljava/lang/Object;
.source "BaiDuVoiceUtils.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Lcom/apk/e1;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/WebConfBean;

.field public final synthetic new:Lcom/apk/c0;


# direct methods
.method public constructor <init>(Lcom/apk/c0;Landroid/content/Context;Lcom/biquge/ebook/app/bean/WebConfBean;Lcom/apk/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/d0;->new:Lcom/apk/c0;

    iput-object p2, p0, Lcom/apk/d0;->do:Landroid/content/Context;

    iput-object p3, p0, Lcom/apk/d0;->if:Lcom/biquge/ebook/app/bean/WebConfBean;

    iput-object p4, p0, Lcom/apk/d0;->for:Lcom/apk/e1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/d0;->new:Lcom/apk/c0;

    iget-object v1, p0, Lcom/apk/d0;->do:Landroid/content/Context;

    iget-object v2, p0, Lcom/apk/d0;->if:Lcom/biquge/ebook/app/bean/WebConfBean;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/WebConfBean;->getBdaivoice2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apk/d0;->for:Lcom/apk/e1;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/c0;->if(Lcom/apk/c0;Landroid/content/Context;Ljava/lang/String;Lcom/apk/e1;Z)V

    return-void
.end method
