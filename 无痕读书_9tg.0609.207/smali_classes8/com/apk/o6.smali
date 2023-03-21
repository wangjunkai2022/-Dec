.class public final synthetic Lcom/apk/o6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/o6;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    iput-object p2, p0, Lcom/apk/o6;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/o6;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/apk/o6;->do:Lcom/biquge/ebook/app/ui/activity/LoginActivity;

    iget-object v1, p0, Lcom/apk/o6;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/o6;->for:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
