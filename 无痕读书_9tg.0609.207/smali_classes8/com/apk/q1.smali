.class public final synthetic Lcom/apk/q1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:I

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/q1;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/q1;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/q1;->for:Ljava/lang/String;

    iput p4, p0, Lcom/apk/q1;->new:I

    iput-object p5, p0, Lcom/apk/q1;->try:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/apk/q1;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/q1;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/q1;->for:Ljava/lang/String;

    iget v3, p0, Lcom/apk/q1;->new:I

    iget-object v4, p0, Lcom/apk/q1;->try:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/g2;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
