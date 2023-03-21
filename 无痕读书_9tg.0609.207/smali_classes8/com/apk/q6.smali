.class public final synthetic Lcom/apk/q6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/biquge/ebook/app/bean/ConfigMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity$do;Lcom/biquge/ebook/app/bean/ConfigMessage;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/q6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    iput-object p2, p0, Lcom/apk/q6;->if:Lcom/biquge/ebook/app/bean/ConfigMessage;

    iput-boolean p3, p0, Lcom/apk/q6;->for:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/q6;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity$do;

    iget-object v1, p0, Lcom/apk/q6;->if:Lcom/biquge/ebook/app/bean/ConfigMessage;

    iget-boolean v2, p0, Lcom/apk/q6;->for:Z

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/MainActivity$do;->goto(Lcom/biquge/ebook/app/bean/ConfigMessage;Z)V

    return-void
.end method
