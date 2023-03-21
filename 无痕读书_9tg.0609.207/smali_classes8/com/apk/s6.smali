.class public final synthetic Lcom/apk/s6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/bean/ConfigMessage;

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;Lcom/biquge/ebook/app/bean/ConfigMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/s6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    iput-object p2, p0, Lcom/apk/s6;->if:Lcom/biquge/ebook/app/bean/ConfigMessage;

    iput-object p3, p0, Lcom/apk/s6;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/s6;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/apk/s6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    iget-object v1, p0, Lcom/apk/s6;->if:Lcom/biquge/ebook/app/bean/ConfigMessage;

    iget-object v2, p0, Lcom/apk/s6;->for:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/s6;->new:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->else(Lcom/biquge/ebook/app/bean/ConfigMessage;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
